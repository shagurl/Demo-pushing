terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.25.0"
    }
  }
}
provider "google" {
  project     = "do-not-delete-444606"
  zone        = "us-central1-a"
  region      = "us-central1"
}