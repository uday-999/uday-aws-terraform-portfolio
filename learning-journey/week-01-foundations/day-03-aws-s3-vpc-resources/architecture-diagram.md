# Day 03 Infrastructure Architecture

## Resource Flow

Terraform Configuration
        ↓
Terraform AWS Provider
        ↓
AWS API
        ↓
AWS VPC
        ↓
AWS S3 Bucket

---

## Dependency Model

aws_vpc.main_vpc
        ↓
aws_vpc.main_vpc.id reference
        ↓
aws_s3_bucket.learning_bucket

Terraform automatically determines creation order.
