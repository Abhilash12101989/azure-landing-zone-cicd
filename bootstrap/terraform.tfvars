rg = {
  "rg1" = {
    name     = "rg-tfstate-001"
    location = "centralindia"
  }
}

storage_account = {
  "storage_acc" = {
    name                     = "tfstateabhilash2026"
    rg_key                   = "rg1"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

container = {
  "c1" = {
    name        = "dev-state"
    storage_key = "storage_acc"
  }
  "c2" = {
    name        = "prod-state"
    storage_key = "storage_acc"
  }
  "c3" = {
    name        = "qa-state"
    storage_key = "storage_acc"
  }
}
