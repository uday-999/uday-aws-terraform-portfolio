# Day 04 — Terraform Remote Backend & State Management

## Overview

Day 4 focused on Terraform state management and remote backend configuration using AWS S3.

Instead of storing Terraform state locally, the state file was moved to a secure remote backend in AWS S3 with encryption, versioning, and state locking.

This is a production-oriented Terraform practice used in collaborative environments.

---

## Topics Covered

- Terraform state file
- Local vs remote state
- AWS S3 backend
- State locking
- S3 native locking
- Backend migration
- Terraform state commands

---

## What I Learned

### Terraform State File

Terraform stores infrastructure state in:

```bash
terraform.tfstate
```

This file contains:

- resource metadata
- provider information
- infrastructure attributes
- dependency mappings

Terraform compares:

Desired State (Terraform code)
vs
Actual State (terraform state)

This determines what changes need to be applied.

---

### Why Remote Backend?

Problems with local state:

- local machine dependency
- accidental deletion
- poor collaboration
- no locking
- corruption risk
- security concerns

Remote backend solves these problems.

---

### AWS S3 Backend Benefits

- centralized storage
- encryption
- durability
- version history
- safer collaboration
- remote accessibility

---

### State Locking

Terraform supports S3 native locking.

This prevents multiple concurrent operations from modifying state simultaneously.

Benefits:

- avoids corruption
- prevents conflicting deployments
- improves team safety

---

## Backend Configuration

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
```

---

## Practical Work Completed

Completed during Day 4:

- created S3 backend bucket
- enabled versioning
- enabled encryption
- configured Terraform remote backend
- initialized backend
- migrated state
- practiced Terraform state commands
- verified remote state storage

---

## Repository Artifacts

| File | Purpose |
|------|---------|
| README.md | Day 4 documentation |
| notes.md | Personal learning notes |
| blog-draft.md | Blog article |
| architecture-diagram.md | Architecture visualization |
| backend-setup-notes.md | Backend setup notes |
| main.tf | Terraform backend configuration |
| screenshots/ | Practical proof |

---

## Screenshots

### Terraform Backend Initialization
![Terraform Init](screenshots/terraform-init-backend.png)

### S3 Backend Bucket
![Backend Bucket](screenshots/backend-s3-bucket.png)

### Remote State File
![State File](screenshots/terraform-state-s3.png)

### Folder Structure
![Folder Structure](screenshots/day04-folder-structure.png)

---

## Skills Demonstrated

- Terraform state management
- remote backend configuration
- AWS S3 backend usage
- infrastructure security
- Terraform lifecycle management
- state locking concepts

---

## Next Step

Day 05 — Terraform Variables