locals {
  merged_tags = merge(var.common_tags, {
    Environment = var.environment
    ManagedBy   = "Terraform"
  })
}