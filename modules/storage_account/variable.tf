variable "storage_account" {
  type = map(object({
    name                     = string
    rg_key                   = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "rg_name" {
  type = map(string)
}
