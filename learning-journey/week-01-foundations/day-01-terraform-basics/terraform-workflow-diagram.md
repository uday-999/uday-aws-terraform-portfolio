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

Terraform Configuration Files
            ↓
Terraform CLI
            ↓
AWS Provider Plugin
            ↓
AWS API
            ↓
Cloud Infrastructure


---

# 3. blog-draft.md

This is the challenge requirement, so make it strong.

```markdown
# Day 01 — My Introduction to Terraform and Infrastructure as Code

Today I officially started my Terraform and AWS cloud engineering journey.

One of the most important concepts I learned today is Infrastructure as Code (IaC).

Traditionally, infrastructure provisioning was handled manually through cloud dashboards. For example, if an engineer needed an EC2 instance, they would log into AWS Console, configure networking, security settings, storage, and deploy resources manually.

While this may work for small setups, it creates serious challenges at scale.

Some major problems with manual infrastructure management include:

- configuration inconsistency
- deployment delays
- human error
- lack of repeatability
- poor scalability
- missing version control
- troubleshooting complexity

Infrastructure as Code solves these problems.

IaC allows engineers to define infrastructure using code rather than manual processes.

This means infrastructure becomes:

- repeatable
- automated
- scalable
- version controlled
- easier to collaborate on

Terraform is one of the most widely adopted Infrastructure as Code tools.

Terraform allows infrastructure provisioning across multiple cloud platforms including AWS, Azure, and Google Cloud.

A major concept I found interesting is Terraform’s declarative model.

Instead of describing every individual step, we define the desired infrastructure state and Terraform determines how to achieve it.

Terraform workflow:

## 1. terraform init
Initializes the working directory and downloads required provider plugins.

## 2. terraform validate
Checks whether the Terraform configuration is valid.

## 3. terraform plan
Generates an execution preview before making changes.

## 4. terraform apply
Applies infrastructure changes.

## 5. terraform destroy
Safely removes managed infrastructure.

This workflow creates predictability and reduces deployment risk.

Another important concept is version control.

Because infrastructure is code, teams can manage infrastructure changes using Git just like application code.

Terraform architecture flow:

Terraform Code → Provider Plugin → AWS API → Infrastructure

Today I also:

- Installed Terraform
- Verified Terraform CLI setup
- Built my AWS Terraform portfolio repository
- Structured my GitHub repository professionally
- Documented my Day 1 learning journey

My biggest mindset shift:

Infrastructure should not be treated as a manual operational task.

It should be engineered, versioned, and automated.

This is just Day 1, but the foundation already feels powerful.

Looking forward to Day 2.