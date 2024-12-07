terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.10.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



module "docker_host" {
  source = "./modules/docker_host"
  
  environment = var.environment
  key_name    = var.ec2_key_name
  backend_images = [
    {
      image = "josueamayatorres/api_florales:v1"
      external_port = 8080
      internal_port = 8080
      mongodb_env_var = "MONGO_CONNECTION_STRING"
      mongodb_conection = "mongodb+srv://admin:securepassword@my-cluster.t3laz.mongodb.net/?retryWrites=true&w=majority&appName=my-cluster"
    },
    {
      image = "gus322/vj_evento:latest"
      external_port = 9091
      internal_port = 9091
      mongodb_env_var = "VJ_CONNECTION_STRING"
      mongodb_conection = "mongodb+srv://admin:securepassword@my-cluster.t3laz.mongodb.net/?retryWrites=true&w=majority&appName=my-cluster"
    }
  ]
}
