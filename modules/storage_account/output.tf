output "storage_account_id" {
  value = {
    for k, v in azurerm_storage_account.storage_account : k => v.id
  }
}
