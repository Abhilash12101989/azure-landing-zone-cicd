resource "azurerm_storage_container" "example" {
  for_each           = var.container
  name               = each.value.name
  storage_account_id = var.storage_accountid[each.value.storage_key]

  # checkov:skip=CKV2_AZURE_21:Storage logging for Blob service read requests is not configured for state storage containers.
}