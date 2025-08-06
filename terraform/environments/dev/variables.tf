variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure location for the resource group"
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the network security group"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "vnet_dns_servers" {
  description = "The DNS servers for the virtual network"
  type        = list(string)
}

variable "subnet1_name" {
  description = "Name of the first subnet"
  type        = string
}

variable "subnet1_prefix" {
  description = "Address prefixes for the first subnet"
  type        = list(string)
}

variable "subnet2_name" {
  description = "Name of the second subnet"
  type        = string
}

variable "subnet2_prefix" {
  description = "Address prefixes for the second subnet"
  type        = list(string)
}

variable "tags" {
  type = map(string)
}