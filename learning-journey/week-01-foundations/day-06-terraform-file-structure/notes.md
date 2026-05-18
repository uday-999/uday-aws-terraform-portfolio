# Day 06 Notes

## Key Learning

Terraform loads all .tf files in the current directory automatically.

Important:

- File names do not change Terraform behavior
- File names improve readability and organization

## Professional File Breakdown

backend.tf
Stores remote backend config

provider.tf
Stores provider configuration

variables.tf
Stores input variable definitions

locals.tf
Stores reusable internal values

main.tf
Stores core infrastructure resources

outputs.tf
Stores deployment outputs

terraform.tfvars
Stores actual variable values

## Why this matters

Benefits:

- cleaner code
- easier debugging
- better collaboration
- production-ready structure
- scalable infrastructure projects

## Biggest Learning

Good Terraform engineers don't just write code.

They organize infrastructure professionally.