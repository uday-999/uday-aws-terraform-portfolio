# Day 04 Personal Notes

## What I Learned

Terraform keeps track of infrastructure using:

terraform.tfstate

This file helps Terraform understand:

- existing infrastructure
- resource changes
- dependencies
- updates required

---

## Why Remote State?

Local state problems:

- unsafe collaboration
- accidental deletion
- corruption risk
- no concurrency control
- security concerns

---

## S3 Backend Benefits

- centralized storage
- encrypted state
- version recovery
- collaboration support
- durability

---

## State Locking

Terraform uses S3 native locking.

This prevents multiple terraform apply operations at the same time.

---

## Commands Practiced

terraform init
terraform plan
terraform apply
terraform state list
terraform state show
terraform destroy

---

## Biggest Learning

Terraform state management is critical for real infrastructure automation.