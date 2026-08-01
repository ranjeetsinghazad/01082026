resource "azurerm_network_interface" "interface" {
    for_each = var.interfaces
    name = each.value.name
    location = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name = each.value.configuration_name
    subnet_id = data.azurerm_subnet.snet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation

  }

}

variable "interfaces" {
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        configuration_name =string
        private_ip_address_allocation = string
        nic_subnet_name = string
        nic_public_ip_name = string
        virtual_network_name = string

            }))  
}





