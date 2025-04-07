terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.28.0"
    }
  }
}

provider "google" {
    project = "proven-splicer-455011-b2"
    region  = "us-central1"
    zone    = "us-central1-a"
    credentials = "../credentials.json"
}




resource "google_storage_bucket" "static-site" {
  name          = "owlx-jenkins.com"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}