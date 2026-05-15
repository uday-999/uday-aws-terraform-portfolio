# Day 03 — My First AWS Infrastructure Deployment with Terraform

Today I completed my first real AWS infrastructure deployment using Terraform.

This was a major milestone because I moved from theory into actual infrastructure provisioning.

The main concepts I learned today were AWS authentication, Terraform resource creation, and implicit dependencies.

Before Terraform can create AWS infrastructure, it must authenticate with AWS.

I configured credentials using AWS CLI:

aws configure

Terraform then uses those credentials through the AWS provider to communicate with AWS APIs.

This helped me understand that Terraform itself does not directly create infrastructure.

The workflow is:

Terraform Configuration → AWS Provider → AWS API → Infrastructure

For practical implementation, I provisioned:

- an AWS VPC
- an AWS S3 bucket

The VPC provides isolated AWS networking.

It acts as the network boundary where AWS resources can operate securely.

Amazon S3 (Simple Storage Service) is AWS object storage.

Common use cases include:

- static website hosting
- backups
- log storage
- application assets
- archival

One important lesson:

S3 bucket names must be globally unique.

A concept I found especially interesting today was implicit dependency.

Terraform automatically understands infrastructure order when one resource references another.

Example:

aws_vpc.main_vpc.id

This tells Terraform that the VPC must exist before the dependent resource.

That means Terraform automatically manages provisioning order.

This reduces manual dependency handling.

Terraform commands practiced:

terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

Each command plays a critical role:

terraform init → initializes project
terraform validate → checks syntax
terraform plan → previews changes
terraform apply → creates infrastructure
terraform destroy → removes resources

A major takeaway:

Infrastructure provisioning becomes predictable, repeatable, and automated.

Instead of manually clicking through cloud dashboards, infrastructure becomes code.

Practical work completed today:

- configured AWS authentication
- provisioned AWS VPC
- provisioned AWS S3 bucket
- implemented implicit dependency
- practiced Terraform lifecycle commands
- documented architecture and learning

This was my first real infrastructure deployment with Terraform, and it made cloud automation feel much more practical.

Excited for Day 4.