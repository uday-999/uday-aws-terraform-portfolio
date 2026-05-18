Perfect — single clean copy block for `blog-draft.md`.

````markdown
# Day 05 — Understanding Terraform Variables

Today I learned one of the most important Terraform concepts: variables.

Variables make infrastructure code reusable, flexible, and easier to maintain. Instead of hardcoding values directly into Terraform resources, variables allow infrastructure to adapt based on environment and configuration.

Terraform supports three major variable types:

- Input Variables
- Local Variables
- Output Variables

## Input Variables

Input variables act like function parameters in programming.

They allow users to customize Terraform configurations without modifying the main infrastructure code.

Example:

```hcl
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "learning"
}

variable "bucket_name" {
  description = "Base S3 bucket name"
  type        = string
  default     = "terraform-variable-demo"
}
````

These variables are referenced using the `var.` prefix:

```hcl
var.environment
var.bucket_name
```

Benefits of input variables:

* reusable Terraform code
* cleaner infrastructure definitions
* environment flexibility
* easier maintenance
* configurable deployments

For example, the same Terraform code can be reused for:

* development
* staging
* production

without changing the infrastructure logic.

---

## Local Variables

Local variables are internally computed reusable values.

They help avoid repetition and improve readability.

Example:

```hcl
locals {
  common_tags = {
    Environment = var.environment
    Project     = "Terraform-Learning"
    Owner       = "Uday"
  }

  full_bucket_name = "${var.environment}-${var.bucket_name}-${random_string.suffix.result}"
}
```

In this example:

* `common_tags` creates reusable AWS resource tags
* `full_bucket_name` dynamically generates a unique S3 bucket name

Benefits of local variables:

* avoids duplicate code
* improves readability
* centralizes internal logic
* simplifies naming strategies
* makes configurations cleaner

This was especially useful because S3 bucket names must be globally unique.

---

## Output Variables

Output variables display useful information after infrastructure deployment.

They work like return values in programming.

Example:

```hcl
output "bucket_name" {
  description = "Created bucket name"
  value       = aws_s3_bucket.demo.bucket
}

output "bucket_arn" {
  description = "Bucket ARN"
  value       = aws_s3_bucket.demo.arn
}
```

After deployment, outputs can be viewed using:

```bash
terraform output
```

This helps retrieve:

* resource names
* ARNs
* computed values
* deployment details
* configuration verification

Benefits:

* easier debugging
* visibility into deployed infrastructure
* reusable deployment information

---

## Variable Precedence

Terraform resolves variables in a defined priority order:

1. Command line variables
2. terraform.tfvars
3. Environment variables
4. Default values

This makes Terraform highly flexible.

Example:

A value passed using:

```bash
terraform plan -var="environment=production"
```

will override values from `terraform.tfvars`.

---

## Practical Implementation

For this lesson, I used all three variable types together in a practical AWS S3 bucket deployment.

Workflow:

* defined input variables in `variables.tf`
* created reusable internal logic in `locals.tf`
* deployed infrastructure in `main.tf`
* exposed deployment details using `output.tf`
* stored default configuration in `terraform.tfvars`

Commands practiced:

```bash
terraform init
terraform plan
terraform apply
terraform output
terraform destroy
```

---

## Key Takeaway

Variables transform Terraform from static infrastructure code into reusable, dynamic infrastructure automation.

Instead of hardcoding infrastructure definitions, Terraform configurations become flexible, scalable, and production-friendly.

This was an important step toward writing cleaner and more professional Terraform code.

```
```
