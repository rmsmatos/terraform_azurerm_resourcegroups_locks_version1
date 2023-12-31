module "azurerm_resourcegroup_version1" {
  source   = "github.com/rmsmatos/terraform_azurerm_resourcegroup_version1"
  name     = var.name
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "lock" {
  name       = var.lock_name
  scope      = module.azurerm_resourcegroup_version1.id
  lock_level = var.lock_level
  notes      = var.lock_notes
}
