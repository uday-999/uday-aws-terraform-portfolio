resource "aws_s3_bucket" "demo" {
  bucket = "uday-day7-${var.environment}-terraform-demo"

  tags = local.merged_tags
}