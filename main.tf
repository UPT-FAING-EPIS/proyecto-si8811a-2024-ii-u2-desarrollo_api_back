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

provider "mongodbatlas" {
  public_key  = var.mongodb_atlas_public_key
  private_key = var.mongodb_atlas_private_key
}

# provider "grafana" {
#   cloud_api_key = var.grafana_cloud_api_key 
# }

# Proveedor para recursos dentro del stack de Grafana
#provider "grafana" {
#  alias = "stack"
#  url   = var.grafana_url
#  auth  = var.grafana_auth
#}


# module "mongodb" {
#   source = "./modules/mongodb"

#   providers = {
#     mongodbatlas = mongodbatlas
#   }

#   project_name   = var.mongodb_project_name
#   atlas_org_id   = var.mongodb_atlas_org_id
#   cluster_name   = var.mongodb_cluster_name
#   region         = var.mongodb_region
#   db_username    = var.mongodb_username
#   db_password    = var.mongodb_password
#   database_name  = var.mongodb_database_name
# }



#module "grafana" {
#  source = "./modules/grafana"
  
#  providers = {
#    grafana = grafana.stack
#  }

#  mongodb_username      = var.mongodb_username
#  mongodb_password      = var.mongodb_password
#  mongodb_cluster_name  = var.mongodb_cluster_name
#  mongodb_database_name = var.mongodb_database_name
#  mongodb_conection_1   = "mongodb+srv://admin:securepassword@my-cluster.t3laz.mongodb.net/?retryWrites=true&w=majority&appName=my-cluster"
#}


# module "web_app" {
#   source = "./modules/web_app"
  
#   app_bucket_name = var.react_app_bucket_name
#   environment     = var.environment
# }


# module "mobile_app" {
#   source = "./modules/mobile_app"
  
#   app_bucket_name = var.flutter_app_bucket_name
#   environment     = var.environment
# }



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
