locals {
  common_tags = {
    Environment = var.environment
    Project     = "Terraform-Learning"
    Owner       = "Uday"
  }

  full_bucket_name = "${var.environment}-${var.bucket_name}-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}