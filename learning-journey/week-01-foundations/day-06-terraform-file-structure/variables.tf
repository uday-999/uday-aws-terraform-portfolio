variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "demo"
}

variable "bucket_name" {
  description = "Base bucket name"
  type        = string
  default     = "uday-tf-demo"
}