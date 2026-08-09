variable "storage_Account" {
  type = map(object({
    name                     = string
    rg_key                   = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "rg_name" {
  type = map(string)
}


variable "rg_location" {
  type = map(string)
}
