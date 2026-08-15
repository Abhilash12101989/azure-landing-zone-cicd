variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "common_tags" {
  type = map(string)
}