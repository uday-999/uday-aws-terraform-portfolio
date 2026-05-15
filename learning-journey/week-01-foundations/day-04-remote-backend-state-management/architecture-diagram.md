# Day 04 Architecture Diagram

Terraform Configuration
        ↓
Terraform CLI
        ↓
S3 Remote Backend
        ↓
terraform.tfstate
        ↓
State Locking (.tflock)
        ↓
AWS Infrastructure