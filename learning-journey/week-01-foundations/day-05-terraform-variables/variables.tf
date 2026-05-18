variable "environment" {
  description = "Environment name"
  type        = string
  default     = "learning"
}

variable "bucket_name" {
  description = "Base S3 bucket name"
  type        = string
  default     = "terraform-variable-demo"
}