resource "azurerm_storage_container" "example" {
    for_each = var.container
  name                  = each.value.name
  storage_account_id    = var.storage_accountid[each.value.storage_key]
}