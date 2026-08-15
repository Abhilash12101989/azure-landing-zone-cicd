module "rg" {
  source      = "../modules/resource_group"
  rg          = var.rg
  common_tags = local.common_tags
}

module "storage_account" {
  source          = "../modules/storage_account"
  storage_account = var.storage_account
  rg_name         = module.rg.rg_name
  common_tags     = local.common_tags
}

module "container" {
  source            = "../modules/storage_container"
  container         = var.container
  storage_accountid = module.storage_account.storage_account_id
  common_tags       = local.common_tags
}
