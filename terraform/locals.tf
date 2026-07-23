locals {
  common_name = "${var.project_name}-${var.environment}"

  common_tags = {
    Environment  = var.environment
    Project      = var.project_name
    BusinessUnit = var.business_unit
    ManagedBy    = "terraform"
  }
}