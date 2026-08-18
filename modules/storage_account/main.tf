resource "azurerm_storage_account" "storage_account" {
  for_each                 = var.storage_account
  name                     = each.value.name
  resource_group_name      = var.rg_name[each.value.rg_key]
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

   # checkov:skip=CKV_AZURE_59:Terraform backend is accessed by GitHub-hosted runners; public network access is required until private endpoint connectivity is implemented.
   # checkov:skip=CKV_AZURE_33:Queue service is not used; this storage account is dedicated to Terraform state stored in Azure Blob Storage.

  tags = var.common_tags
}
