resource "azurerm_network_interface_security_group_association" "associate" {
    for_each = var.associations
    network_interface_id = data.azurerm_network_interface.interface[each.key].id
    network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
  
}

data "azurerm_network_interface" "interface" {
     for_each = var.associations
    name = each.value.network_interface_name
      resource_group_name = each.value.rg_name
}

data "azurerm_network_security_group" "nsg" {
    for_each = var.associations
    name = each.value.nsg_name
  resource_group_name = each.value.rg_name
}

