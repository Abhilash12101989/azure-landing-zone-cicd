variable "container" {
  type = map(object({
    name        = string
    storage_key = string
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "storage_accountid" {
  type = map(string)
}
