# Day 01 Personal Notes — Terraform Fundamentals

## What I Learned Today

Today I started learning Terraform and the concept of Infrastructure as Code (IaC).

Before learning Terraform, infrastructure management mostly meant manually creating cloud resources through dashboards like AWS Console.

That approach works for small setups but creates major issues in real environments.

Problems with manual infrastructure:

- Human mistakes
- Inconsistent configurations
- Time-consuming deployments
- Difficult scaling
- No version control
- Hard troubleshooting

---

## What is Infrastructure as Code?

Infrastructure as Code (IaC) means defining infrastructure using code instead of manually configuring resources.

Example:

Instead of manually creating:
- EC2 instances
- Security Groups
- VPCs
- S3 Buckets

we define them in configuration files.

Benefits:

- repeatability
- consistency
- automation
- version control
- collaboration
- scalability
- reduced operational risk

---

## What is Terraform?

Terraform is an Infrastructure as Code tool created by HashiCorp.

Terraform helps provision and manage infrastructure across multiple cloud providers.

Supported platforms:

- AWS
- Azure
- Google Cloud
- Kubernetes
- VMware

---

## Terraform Workflow

Terraform follows a predictable workflow:

### terraform init
Initializes the project and downloads provider plugins.

### terraform validate
Checks Terraform configuration syntax.

### terraform plan
Shows infrastructure changes before execution.

### terraform apply
Creates or updates infrastructure.

### terraform destroy
Deletes managed infrastructure.

---

## Biggest Takeaway

Infrastructure should be treated like software.

That means:

- writing code
- version controlling it
- reviewing changes
- automating deployments

This mindset is foundational for Cloud / DevOps engineering.