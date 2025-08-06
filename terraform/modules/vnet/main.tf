resource "azurerm_resource_group" "vnetresource" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.vnetresource.location
  resource_group_name = azurerm_resource_group.vnetresource.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.vnetresource.location
  resource_group_name = azurerm_resource_group.vnetresource.name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers

  subnet {
    name             = var.subnet1_name
    address_prefixes = var.subnet1_prefixes
  }

  subnet {
    name             = var.subnet2_name
    address_prefixes = var.subnet2_prefixes
    security_group   = azurerm_network_security_group.nsg.id
  }

}