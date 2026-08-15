module "resource_group" {
  source = "../../modules/resource_group"
  rg     = var.rg
  common_tags = local.dev_tags
}


