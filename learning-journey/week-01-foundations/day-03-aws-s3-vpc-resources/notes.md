# Day 03 Personal Notes — AWS Provisioning

## What I Learned

Today I created real AWS resources using Terraform.

Resources created:

- AWS VPC
- AWS S3 Bucket

---

## AWS Authentication

Terraform needs AWS credentials.

Setup command:

aws configure

Required:

- Access Key ID
- Secret Access Key
- Region
- Output format

---

## Terraform Resource Syntax

Example:

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

Pattern:

resource "provider_resource_type" "local_name"

---

## Implicit Dependency

Terraform automatically detects dependencies.

Example:

aws_vpc.main_vpc.id

This means:

Create VPC first
Then dependent resource

---

## Commands Practiced

terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

---

## Biggest Learning

Infrastructure provisioning becomes predictable and repeatable with Terraform.