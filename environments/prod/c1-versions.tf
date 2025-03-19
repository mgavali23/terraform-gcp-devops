# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.35.0"
    }
  }
  backend "gcs" {
    bucket = "mgavali_bucket1"
    prefix = "env/prod"
  }  
}

# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region = var.gcp_region1
}