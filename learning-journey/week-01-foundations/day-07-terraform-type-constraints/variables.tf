variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "instance_count" {
  description = "Number of instances"
  type        = number
  default     = 1
}

variable "enable_monitoring" {
  description = "Enable monitoring"
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "Availability zones list"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "security_ports" {
  description = "Security group ports"
  type        = set(number)
  default     = [22, 80, 443]
}

variable "common_tags" {
  description = "Common tags map"
  type        = map(string)

  default = {
    Owner   = "Uday"
    Project = "Terraform-Learning"
  }
}

variable "server_config" {
  description = "Server configuration object"

  type = object({
    instance_type = string
    volume_size   = number
  })

  default = {
    instance_type = "t2.micro"
    volume_size   = 20
  }
}