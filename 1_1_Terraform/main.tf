terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
  project = "pro-plasma-448701-j3"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "pro-plasma-448701-j3-terra-bucket"
  location      = "US"
  force_destroy = true

#   lifecycle_rule {
#     condition {
#       age = 3
#     }
#     action {
#       type = "Delete"
#     }
#   }
}