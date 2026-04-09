resource "google_storage_bucket" "demo-bucket-four" {
  name          = "cruk-bucket-four"
  location      = "US"
  uniform_bucket_level_access = true
  }
