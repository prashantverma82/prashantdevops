module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}
