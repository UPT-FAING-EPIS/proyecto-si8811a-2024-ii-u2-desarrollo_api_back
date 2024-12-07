terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.28.0"
    }
  }
}

# Crear la carpeta para dashboards
resource "grafana_folder" "monitoreo_topicos" {
  title = "monitoreo-topicos"
}

resource "grafana_data_source" "mongodb" {
  name = "MongoDB_Coneccion_2"
  uid  = "mongodb-juegos-florales"
  type = "grafana-mongodb-datasource"

  json_data_encoded = jsonencode({
    connection          = "mongodb+srv://admin:securepassword@my-cluster.t3laz.mongodb.net/${var.mongodb_database_name}?retryWrites=true&w=majority&appName=my-cluster"
    tlsAuth             = false
    tlsAuthWithCACert   = false
    tlsSkipVerify       = true
  })
}


resource "grafana_dashboard" "mongodb_dashboard" {
  config_json = file("${path.module}/dashboards/mongodb_dashboard.json")
  folder      = grafana_folder.monitoreo_topicos.id
  depends_on  = [grafana_data_source.mongodb]
}


# Dashboard para Docker Host
# resource "grafana_dashboard" "docker_host_dashboard" {
#   config_json = file("C:/Users/HP/Music/proyecto-si8811a-2024-ii-u1-automatizado-huallpa_apaza/terraform/modules/grafana/docker_host_dashboard.json")
#   folder      = grafana_folder.monitoreo_topicos.id
# }



# # Dashboard para Mobile App (Flutter)
# resource "grafana_dashboard" "mobile_app_dashboard" {
#   config_json = file("C:/Users/HP/Music/proyecto-si8811a-2024-ii-u1-automatizado-huallpa_apaza/terraform/modules/grafana/mobile_app_dashboard.json")  
#   folder      = grafana_folder.monitoreo_topicos.id
# }


# Dashboard para Web App (React)
# resource "grafana_dashboard" "web_app_dashboard" {
#   config_json = file("/grafana/web_app_dashboard.json")
#   folder      = grafana_folder.monitoreo_topicos.id
# }
