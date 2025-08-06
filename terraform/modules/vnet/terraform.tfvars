resource_group_name            = "Vnetresources"
resource_group_location        = "West Europe"

network_security_group_name    = "vnet-security-group"

virtual_network_name           = "algorims-network"
vnet_address_space             = ["10.0.0.0/16"]
vnet_dns_servers               = ["10.0.0.4", "10.0.0.5"]

subnet1_name                   = "subnet1"
subnet1_prefixes               = ["10.0.1.0/24"]

subnet2_name                   = "subnet2"
subnet2_prefixes               = ["10.0.2.0/24"]
