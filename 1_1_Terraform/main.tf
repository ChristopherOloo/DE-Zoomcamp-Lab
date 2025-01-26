terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "demo-bucket" {
  name          = var.gcs_storage_bucket_name
  location      = var.location
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

resource "google_bigquery_dataset" "demo-dataset" {
  dataset_id = var.bq_dataset_name
}