# Day 07 — Terraform Type Constraints & Variable Validation

## Overview

Day 7 focused on understanding Terraform type constraints and input validation.

Terraform variables are not just placeholders for values.

They can enforce data types, restrict invalid input, and make infrastructure configurations safer and more predictable.

This lesson introduced both basic and advanced Terraform variable types.

---

## Topics Covered

- string type
- number type
- bool type
- list type
- set type
- map type
- object type
- validation blocks
- type safety
- predictable infrastructure configuration

---

## What I Learned

### Basic Variable Types

Terraform supports several primitive types.

**string**

Used for text values.

Example:

```hcl
variable "environment" {
  type = string
}
```

---

**number**

Used for numeric values.

Example:

```hcl
variable "instance_count" {
  type = number
}
```

---

**bool**

Used for true/false values.

Example:

```hcl
variable "enable_monitoring" {
  type = bool
}
```

---

### Collection Types

Terraform supports grouped data structures.

**list(string)**

Ordered collection.

Example:

```hcl
availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]
```

---

**set(number)**

Unique unordered values.

Example:

```hcl
security_ports = [22, 80, 443]
```

---

**map(string)**

Key-value pairs.

Example:

```hcl
common_tags = {
  Owner   = "Uday"
  Project = "Terraform"
}
```

---

### Complex Types

**object**

Structured configuration blocks.

Example:

```hcl
server_config = {
  instance_type = "t2.micro"
  volume_size   = 30
}
```

Useful for grouping related infrastructure settings.

---

### Validation Blocks

Terraform allows validation rules.

Example:

```hcl
validation {
  condition     = contains(["dev", "staging", "prod"], var.environment)
  error_message = "Environment must be dev, staging, or prod."
}
```

This prevents invalid infrastructure inputs.

Benefits:

- safer deployments
- predictable behavior
- reduced configuration mistakes
- stronger infrastructure discipline

---

## Architecture Flow

Terraform Variables
      ↓
Type Constraints
      ↓
Validation Rules
      ↓
Terraform Processing
      ↓
AWS Resource Deployment

---

## Practical Work Completed

Completed during Day 7:

- created typed variables
- implemented string, number, bool types
- used list, set, map collections
- configured object type variables
- implemented validation rules
- tested terraform validate
- deployed AWS infrastructure
- verified outputs

---

## Repository Artifacts

| File | Purpose |
|------|---------|
| README.md | Day 7 documentation |
| notes.md | Learning notes |
| blog-draft.md | Blog article |
| architecture-diagram.md | Architecture diagram |
| provider.tf | Provider config |
| variables.tf | Typed variables |
| locals.tf | Reusable logic |
| main.tf | Resource config |
| outputs.tf | Outputs |
| terraform.tfvars | Variable values |
| screenshots/ | Practical proof |

---

## Screenshots

### Terraform Validate
![Terraform Validate](screenshots/day07-terraform-validate.png)

### Terraform Plan
![Terraform Plan](screenshots/day07-terraform-plan.png)

### Terraform Output
![Terraform Output](screenshots/day07-terraform-output.png)

### Folder Structure
![Folder Structure](screenshots/day07-folder-structure.png)

---

## Skills Demonstrated

- Terraform variable design
- infrastructure validation
- type-safe configurations
- reusable infrastructure code
- predictable deployments
- Terraform best practices

---

## Key Takeaway

Terraform variables are more than placeholders.

Type constraints and validation make infrastructure safer, cleaner, and production-ready.

---

## Next Step

Day 08 — Terraform Meta Arguments