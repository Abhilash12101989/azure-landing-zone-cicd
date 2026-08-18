resource "azurerm_storage_account" "storage_account" {
  for_each                        = var.storage_account
  name                            = each.value.name
  resource_group_name             = var.rg_name[each.value.rg_key]
  location                        = each.value.location
  account_tier                    = each.value.account_tier
  account_replication_type        = each.value.account_replication_type
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  # checkov:skip=CKV_AZURE_59:Terraform backend is accessed by GitHub-hosted runners; public network access is required until private endpoint connectivity is implemented.
  # checkov:skip=CKV_AZURE_33:Queue service is not used; this storage account is dedicated to Terraform state stored in Azure Blob Storage.
  # checkov:skip=CKV2_AZURE_33:Private endpoint connectivity is not implemented for Terraform bootstrap state storage account.
  # checkov:skip=CKV_AZURE_206:LRS replication is used for cost-efficiency on Terraform bootstrap state storage account.
  # checkov:skip=CKV2_AZURE_40:Shared Key authorization is required for Terraform state storage backend access.
  # checkov:skip=CKV2_AZURE_1:Microsoft-managed keys (MMK) are used for bootstrap state storage account encryption.
  # checkov:skip=CKV2_AZURE_21:Storage logging for Blob service read requests is not configured for state storage containers.
  # checkov:skip=CKV2_AZURE_41:SAS expiration policy is configured for storage account.

  blob_properties {
    container_delete_retention_policy {
      days = 7
    }
    delete_retention_policy {
      days = 7
    }
  }

  sas_policy {
    expiration_period = "90.00:00:00"
    expiration_action = "Log"
  }

   # checkov:skip=CKV_AZURE_59:Terraform backend is accessed by GitHub-hosted runners; public network access is required until private endpoint connectivity is implemented.
   # checkov:skip=CKV_AZURE_33:Queue service is not used; this storage account is dedicated to Terraform state stored in Azure Blob Storage.

  tags = var.common_tags
}
