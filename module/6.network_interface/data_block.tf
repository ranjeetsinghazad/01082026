data "azurerm_subnet" "snet" {
    for_each = var.interfaces
    name = each.value.nic_subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_public_ip" "pip" {
    for_each = var.interfaces
    name = each.value.nic_public_ip_name
  resource_group_name = each.value.resource_group_name
}