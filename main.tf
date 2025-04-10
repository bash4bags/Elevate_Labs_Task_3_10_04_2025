# Specify the required provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Configure the Docker provider
provider "docker" {}

# Define a Docker container resource
resource "docker_container" "nginx" {
  name  = "nginx-container"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8080
  }
}