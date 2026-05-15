# Day 01 — Terraform Fundamentals

## Overview

Day 1 focused on building a foundational understanding of Terraform and Infrastructure as Code (IaC).

The goal was to understand why infrastructure automation matters, how Terraform works, and the standard Terraform workflow used in real-world cloud engineering.

This day was focused on conceptual learning, documentation, and setting up the foundation for future AWS infrastructure projects.

---

## Topics Covered

- Introduction to Infrastructure as Code (IaC)
- Problems with traditional manual infrastructure management
- Why Terraform is widely used
- Terraform architecture
- Terraform workflow
- Terraform installation and CLI setup
- Infrastructure automation mindset

---

## What I Learned

### Infrastructure as Code (IaC)

Infrastructure as Code means managing infrastructure through code instead of manual cloud console operations.

Instead of manually creating cloud resources such as:

- EC2 instances
- Security Groups
- S3 Buckets
- VPCs

Infrastructure can be defined in configuration files and provisioned automatically.

Benefits include:

- consistency
- repeatability
- automation
- version control
- team collaboration
- scalability
- reduced human error

---

### Challenges with Traditional Infrastructure Management

Manual infrastructure provisioning creates several operational challenges:

- inconsistent environments
- deployment delays
- human configuration mistakes
- difficult troubleshooting
- poor scalability
- lack of infrastructure version history

Terraform helps solve these problems through automation.

---

### What is Terraform?

Terraform is an Infrastructure as Code tool developed by HashiCorp.

It allows engineers to define infrastructure declaratively and provision resources across multiple cloud platforms.

Supported ecosystems include:

- AWS
- Azure
- Google Cloud
- Kubernetes
- VMware

---

### Terraform Workflow

Standard Terraform lifecycle:

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

Purpose of each command:

**terraform init**
- Initializes the working directory
- Downloads provider plugins

**terraform validate**
- Validates Terraform configuration syntax

**terraform plan**
- Shows execution preview before changes

**terraform apply**
- Provisions infrastructure resources

**terraform destroy**
- Safely removes managed infrastructure

---

## Terraform Architecture Flow

```text
Terraform Configuration Files
            ↓
Terraform CLI
            ↓
Provider Plugin
            ↓
AWS API
            ↓
Cloud Infrastructure
```

---

## Practical Work Completed

Completed during Day 1:

- Installed Terraform
- Verified Terraform CLI installation
- Understood Terraform command workflow
- Created AWS Terraform portfolio repository
- Structured professional GitHub portfolio
- Documented learning notes
- Prepared technical blog draft

---

## Repository Artifacts

This folder includes:

| File | Purpose |
|------|---------|
| README.md | Day 1 documentation |
| notes.md | Personal technical notes |
| blog-draft.md | Blog submission draft |
| terraform-workflow-diagram.md | Workflow explanation |
| screenshots/ | Proof of practical work |

---

## Skills Demonstrated

Day 1 reflects foundational skills in:

- Infrastructure as Code concepts
- Terraform fundamentals
- CLI tooling
- Git & GitHub workflow
- technical documentation
- cloud engineering learning discipline

---

## Key Takeaway

The biggest learning from Day 1:

Infrastructure should be treated as code—not as a manual operational task.

That mindset is fundamental for modern Cloud and DevOps engineering.