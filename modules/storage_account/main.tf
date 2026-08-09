resource "azurerm_storage_account" "example" {
  for_each                 = var.storage_Account
  name                     = each.value.name
  resource_group_name      = var.rg_name[each.value.rg_key]
  location                 = var.rg_location[each.value.rg_key]
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  tags = {
    enviornment = "dev"
  }

}
