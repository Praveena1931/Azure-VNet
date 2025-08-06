provider "azurerm" {
  features {}
}

module "virtualnetwork" {
  source                      = "../../modules/vnet"
  resource_group_name = var.resource_group_name
  resource_group_location = var.resource_group_location
  network_security_group_name = var.network_security_group_name
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space
  vnet_dns_servers = var.vnet_dns_servers
  subnet1_name = var.subnet1_name
  subnet1_prefix = var.subnet1_prefix
  subnet2_name = var.subnet2_name
  subnet2_prefix = var.subnet2_prefix

}
