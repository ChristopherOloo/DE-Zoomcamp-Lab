variable "credentials" {
  description = "The GCP Credentials"
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "The GCP Terraform Project"
  default     = "pro-plasma-448701-j3"
}

variable "region" {
  description = "Default Region"
  default     = "us-central1"
}

variable "location" {
  description = "Default Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "Big Query Data set Name for Demo"
  default     = "demo_dataset"
}

variable "gcs_storage_bucket_name" {
  description = "Google cloud storage used to lean"
  default     = "pro-plasma-448701-j3-terra-bucket"
}

variable "gcs_storage_bucket_class" {
  description = "Google cloud storage used to lean"
  default     = "STANDARD"
}