# Day 02 Personal Notes — Terraform Providers

## What I Learned Today

Today I learned how Terraform actually communicates with cloud platforms.

Terraform itself does not directly create infrastructure.

It relies on providers.

A provider is a plugin that allows Terraform to interact with cloud APIs.

Examples:

- AWS Provider
- Azure Provider
- Google Cloud Provider
- Kubernetes Provider
- GitHub Provider
- Random Provider

---

## Provider Architecture

Terraform Configuration
        ↓
Terraform Core
        ↓
Provider Plugin
        ↓
Cloud Provider API
        ↓
Infrastructure

---

## Terraform Core vs Provider

Terraform Core handles:

- configuration parsing
- dependency graph management
- execution planning
- state management

Provider handles:

- API communication
- authentication
- resource provisioning
- cloud-specific logic

---

## Why Version Pinning Matters

Without version control:

- breaking changes may occur
- team environments become inconsistent
- infrastructure behavior changes unexpectedly

Best practice:
Always define provider versions.