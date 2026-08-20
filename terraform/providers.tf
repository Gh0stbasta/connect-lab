provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment  = var.environment
      Project      = var.project_name
      BusinessUnit = var.business_unit
      ManagedBy    = "terraform"
    }
  }
}