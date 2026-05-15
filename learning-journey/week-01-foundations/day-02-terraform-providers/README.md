# Day 02 — Terraform Providers & Version Management

## Overview

Day 2 focused on understanding Terraform Providers and version management.

Terraform relies on providers to communicate with external platforms such as AWS, Azure, Google Cloud, and other APIs.

This day introduced the provider model, version constraints, and best practices for maintaining stable Terraform infrastructure.

---

## Topics Covered

- Terraform Providers
- Provider plugins
- Terraform Core vs Provider
- Version constraints
- Provider version operators
- AWS provider configuration
- Provider best practices

---

## What I Learned

### What is a Terraform Provider?

A Terraform provider is a plugin that enables Terraform to interact with external systems.

Examples:

- AWS
- Azure
- Google Cloud
- Kubernetes
- GitHub
- Random

Without providers, Terraform cannot provision infrastructure.

---

### Terraform Core vs Provider

Terraform consists of two major components:

**Terraform Core**
Responsible for:

- reading configuration
- execution planning
- dependency management
- state tracking

**Terraform Provider**
Responsible for:

- API communication
- authentication
- resource provisioning
- provider-specific operations

---

### Why Version Management Matters

Version control helps prevent:

- breaking changes
- incompatibility
- inconsistent deployments
- unstable infrastructure behavior

Benefits:

- reproducibility
- stability
- predictable deployments
- controlled upgrades

---

## Version Operators

| Operator | Meaning |
|--------|---------|
| = 1.2.3 | Exact version |
| >= 1.2 | Greater than or equal |
| <= 1.2 | Less than or equal |
| ~> 1.2 | Safe patch updates |
| >= 1.2, < 2.0 | Range constraint |

---

## Terraform Example

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
```

---

## Practical Work Completed

Completed during Day 2:

- learned provider architecture
- configured AWS provider
- understood Terraform Core vs Provider
- practiced version constraints
- created provider configuration example

---

## Repository Artifacts

| File | Purpose |
|------|---------|
| README.md | Day 2 documentation |
| notes.md | Learning notes |
| blog-draft.md | Blog draft |
| provider-architecture-diagram.md | Architecture explanation |
| main.tf | Provider configuration example |
| screenshots/ | Practical proof |

---

## Skills Demonstrated

- Terraform providers
- version management
- Terraform syntax
- AWS provider configuration
- technical documentation

---

## Next Step

Day 03 — Creating AWS resources with Terraform.