module "resource_group" {
  source = "../../Modules/resource_group"
  rg = var.rg
}

module "storage_account" {
  source = "../../modules/storage_account"
  storage_Account = var.storage_Account
  rg_location = module.resource_group.rg_location
  rg_name = module.resource_group.rg_name
}
