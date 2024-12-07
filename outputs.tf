output "docker_host_instance_id" {
  description = "ID of the Docker host EC2 instance"
  value       = module.docker_host.instance_id
}