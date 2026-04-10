resource "google_storage_bucket" "demo-bucket-four" {
  name          = "cruk-bucket-four"
  location      = "US"
  project       = "do-not-delete-444606"
  uniform_bucket_level_access = true
  }
