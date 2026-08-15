variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_account" {
  type = map(object({
    name                     = string
    rg_key                   = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "container" {
  type = map(object({
    name        = string
    storage_key = string
  }))
}
