variable "environment" {}
variable "key_name" {}
variable "backend_images" {
  type = list(object({
    image = string
    external_port = number
    internal_port = number
    mongodb_env_var = string
    mongodb_conection = string

  }))
}
