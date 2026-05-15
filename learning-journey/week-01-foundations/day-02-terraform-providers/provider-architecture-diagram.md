# Terraform Provider Architecture Diagram

## Infrastructure Communication Flow

```text
Terraform Configuration Files
            ↓
Terraform Core
            ↓
Provider Plugin
            ↓
Cloud Provider API (AWS)
            ↓
Infrastructure Resources
```

---

## Version Relationship

```text
Terraform Core Version
        ≠
Provider Version
```

These are managed independently.

---

## Example Provider Communication

```text
main.tf
   ↓
Terraform CLI
   ↓
AWS Provider
   ↓
AWS API
   ↓
Resource Creation
```