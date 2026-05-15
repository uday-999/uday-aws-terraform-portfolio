# Terraform Workflow Diagram

## Infrastructure Provisioning Flow

```text
Developer writes Terraform code
            ↓
Terraform reads configuration files
            ↓
terraform init
            ↓
Provider plugins installed
            ↓
terraform validate
            ↓
Configuration syntax verified
            ↓
terraform plan
            ↓
Execution plan generated
            ↓
terraform apply
            ↓
Terraform provider communicates with AWS API
            ↓
Infrastructure resources created