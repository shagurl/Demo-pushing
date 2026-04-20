module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 6.0"

  project_id   = "do-not-delete-444606"
  network_name = var.network_name
  routing_mode = "GLOBAL"

  # Modern subnet format
  subnets = [
    {
      subnet_name               = "subnet-01"
      subnet_ip                 = "10.10.10.0/24"
      subnet_region             = "us-central1"
      subnet_private_access     = true
      subnet_flow_logs          = true
      subnet_flow_logs_interval = "INTERVAL_10_MIN"
      subnet_flow_logs_sampling = 0.5
      subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
    }
  ]

  secondary_ranges = {
    "subnet-01" = [
      {
        range_name    = "subnet-01-secondary-01"
        ip_cidr_range = "192.168.64.0/24"
      }
    ]
  }
}