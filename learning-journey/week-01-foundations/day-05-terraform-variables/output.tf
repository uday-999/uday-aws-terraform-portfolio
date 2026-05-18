output "bucket_name" {
  description = "Created bucket name"
  value       = aws_s3_bucket.demo.bucket
}

output "bucket_arn" {
  description = "Bucket ARN"
  value       = aws_s3_bucket.demo.arn
}

output "environment" {
  description = "Environment variable value"
  value       = var.environment
}

output "tags" {
  description = "Local tags"
  value       = local.common_tags
}