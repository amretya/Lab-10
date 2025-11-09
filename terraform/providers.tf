terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

variable "project_id" {
  type    = string
  default = "github-action-cve-1"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("key.json") # ← for local use only, not needed in GitHub Actions
}
