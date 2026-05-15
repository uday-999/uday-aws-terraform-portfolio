# Day 04 — Understanding Terraform Remote Backend & State Management

Today I learned one of the most important real-world Terraform concepts: state management.

Terraform uses a state file called:

terraform.tfstate

This file stores information about infrastructure resources that Terraform manages.

It contains:

- resource metadata
- provider information
- dependency relationships
- infrastructure attributes
- current resource state

Terraform compares:

Desired state (Terraform code)

with

Actual state (terraform state)

This comparison allows Terraform to determine what changes are required.

At first, Terraform stores state locally.

For learning, that works.

But in real production environments, local state introduces major challenges:

- accidental file deletion
- corruption risk
- unsafe collaboration
- lack of state locking
- local machine dependency
- security concerns

To solve this, I configured a remote backend using AWS S3.

This allows Terraform state to be stored centrally and securely.

Benefits of using S3 backend:

- centralized state management
- encrypted storage
- durability
- version recovery
- team collaboration support
- safer infrastructure workflows

A particularly interesting concept today was state locking.

Modern Terraform supports S3 native state locking.

This prevents multiple Terraform operations from modifying the same state simultaneously.

Without locking:

Two engineers running terraform apply at the same time could corrupt infrastructure state.

With locking:

Terraform blocks concurrent modification.

That makes infrastructure automation significantly safer.

My backend configuration:

```hcl
terraform {
  backend "s3" {
    bucket       = "uday-tf-state-mumbai-2026"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}