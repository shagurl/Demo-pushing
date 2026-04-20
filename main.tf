module "cloud-storage_simple_bucket" {
  source        = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version       = "12.3.0"
  project_id    = "do-not-delete-444606"
  name          = var.name
  location      = "us-central1"
  force_destroy = false
  versioning    = true
  iam_members = [
    {
      role   = var.iam_members[0].role
      member = "user:${var.iam_members[0].member}"
    }
  ]
}


resource "google_storage_bucket" "crukbackend" {
  name = "cruk-bucket-backendtestgithub"
  location = "US"
  uniform_bucket_level_access = true

}

terraform {
  backend "gcs" {
    bucket  = "cruk-bucket-backendtestgithub"
    prefix  = "terraform/state"
  }
}