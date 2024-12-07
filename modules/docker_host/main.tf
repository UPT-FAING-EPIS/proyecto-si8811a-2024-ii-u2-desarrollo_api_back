data "aws_ami" "debian" {
  most_recent = true
  owners      = ["136693071363"] # Debian

  filter {
    name   = "name"
    values = ["debian-11-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "docker_host" {
  ami           = data.aws_ami.debian.id
  instance_type = "t2.micro"
  key_name      = "vockey"

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
              curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
              echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
              apt-get update
              apt-get install -y docker-ce docker-ce-cli containerd.io
              systemctl start docker
              systemctl enable docker
              usermod -aG docker admin
              ${join("\n", [for container in var.backend_images : "docker pull ${container.image}"])}
              ${join("\n", [for container in var.backend_images : "docker run -d -p ${container.external_port}:${container.internal_port} -e ${container.mongodb_env_var}=\"${container.mongodb_conection}\" ${container.image}"])}
              EOF

  tags = {
    Name = "DockerHost-${var.environment}"
  }

  vpc_security_group_ids = [aws_security_group.allow_all.id]
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all_${var.environment}"
  description = "Allow all inbound traffic"

  ingress {
    description = "All traffic from anywhere"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "All UDP traffic from anywhere"
    from_port   = 0
    to_port     = 65535
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all_${var.environment}"
  }
}
