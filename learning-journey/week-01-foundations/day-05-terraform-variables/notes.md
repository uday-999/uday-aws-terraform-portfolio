# Day 05 Personal Notes

## Terraform Variable Types

Terraform supports three major variable types:

- Input Variables
- Local Variables
- Output Variables

---

## Input Variables

Input variables make Terraform configurable.

Example:

var.environment

Used for:

- reusable configurations
- environment customization
- cleaner code

---

## Local Variables

Local variables store computed values.

Example:

local.full_bucket_name

Useful for:

- avoiding repetition
- reusable internal values
- cleaner logic

---

## Output Variables

Output variables expose useful deployment information.

Examples:

- bucket name
- bucket ARN
- tags

---

## Variable Precedence

Highest to lowest:

Command line
terraform.tfvars
Environment variables
Default values

---

## Biggest Learning

Variables make Terraform reusable, flexible, and production-friendly.