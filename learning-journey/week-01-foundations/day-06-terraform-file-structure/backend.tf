terraform {
  backend "s3" {
    bucket       = "uday-tf-state-mumbai-2026"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}