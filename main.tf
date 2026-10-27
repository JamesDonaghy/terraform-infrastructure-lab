terraform {
  required_version = ">= 1.0.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

locals {
  project_name = "terraform-infrastructure-lab-${var.environment}"
}

resource "local_file" "project_info" {
  content  = "Project: ${local.project_name}\nManaged by Terraform\n"
  filename = "${path.module}/project-info.txt"
}
