terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.25"
    }
  }
}

provider "google" {
  project = "do-not-delete-444606"
  region  = "us-central1"
  zone    = "us-central1-a"
}