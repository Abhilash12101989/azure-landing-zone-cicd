variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_Account" {
  type = map(object({
    name                     = string
    rg_key                   = string
    account_tier             = string
    account_replication_type = string
  }))
}