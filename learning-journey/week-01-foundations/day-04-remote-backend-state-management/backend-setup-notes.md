# Backend Setup Notes

Backend Bucket:

uday-tf-state-mumbai-2026

Region:

ap-south-1

Required:

- Versioning enabled
- Server-side encryption enabled

Useful Commands:

terraform init
terraform state list
terraform state show aws_s3_bucket.test_backend
terraform state pull