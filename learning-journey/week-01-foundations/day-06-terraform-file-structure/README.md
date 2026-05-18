# Day 06 — Terraform File Structure & Code Organization

## Overview

Day 6 focused on organizing Terraform code professionally.

As Terraform projects grow, keeping everything inside a single `main.tf` file becomes difficult to manage.

This lesson focused on separating Terraform configurations into dedicated files based on responsibility.

This is a common real-world DevOps and Cloud Engineering practice.

---

## Topics Covered

- Terraform file organization
- Terraform file loading behavior
- separation of concerns
- code maintainability
- production-ready Terraform structure
- organized infrastructure projects

---

## What I Learned

### How Terraform Loads Files

Terraform automatically loads all `.tf` files inside the working directory.

Important points:

- Terraform loads all `.tf` files together
- file names do not affect functionality
- Terraform merges configurations internally
- naming improves readability only

This means:

```bash
main.tf
provider.tf
variables.tf
```

all become one Terraform configuration.

---

### Why File Organization Matters

Small projects can work with a single file.

But larger infrastructure becomes hard to manage.

Problems with poor organization:

- difficult debugging
- unreadable code
- duplicate logic
- harder collaboration
- poor maintainability

Professional engineers organize infrastructure by purpose.

---

### Professional File Structure

Day 6 structure:

```bash
backend.tf
provider.tf
variables.tf
locals.tf
main.tf
outputs.tf
terraform.tfvars
README.md
```

Purpose:

**backend.tf**
Stores remote state backend configuration.

**provider.tf**
Stores Terraform provider definitions.

**variables.tf**
Stores input variables.

**locals.tf**
Stores internal reusable values.

**main.tf**
Stores infrastructure resources.

**outputs.tf**
Stores deployment outputs.

**terraform.tfvars**
Stores variable values.

---

## Architecture Flow

terraform.tfvars
      ↓
variables.tf
      ↓
locals.tf
      ↓
provider.tf
      ↓
main.tf
      ↓
outputs.tf
      ↓
Terraform Deployment

---

## Practical Work Completed

Completed during Day 6:

- reorganized Terraform code into separate files
- moved backend configuration into backend.tf
- separated provider configuration
- moved variables into variables.tf
- created reusable local values
- separated outputs into outputs.tf
- validated Terraform structure
- tested terraform plan successfully

---

## Repository Artifacts

| File | Purpose |
|------|---------|
| README.md | Day 6 documentation |
| notes.md | Learning notes |
| blog-draft.md | Blog article |
| architecture-diagram.md | Structure visualization |
| backend.tf | Remote backend config |
| provider.tf | Provider config |
| variables.tf | Input variables |
| locals.tf | Reusable local values |
| main.tf | Resources |
| outputs.tf | Outputs |
| terraform.tfvars | Variable values |
| screenshots/ | Practical proof |

---

## Screenshots

### Organized Folder Structure
![Folder Structure](screenshots/day06-folder-structure.png)

### Terraform Plan
![Terraform Plan](screenshots/day06-terraform-plan.png)

### VS Code File Organization
![VS Code Structure](screenshots/day06-vscode-structure.png)

---

## Skills Demonstrated

- Terraform project organization
- infrastructure maintainability
- separation of concerns
- production-ready code structuring
- Terraform validation
- professional DevOps workflow

---

## Key Takeaway

Writing Terraform is important.

Organizing Terraform professionally is equally important.

Clean infrastructure code improves scalability, collaboration, and long-term maintainability.

---

## Next Step

Day 07 — Terraform Type Constraints