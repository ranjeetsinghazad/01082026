resource "azurerm_subnet" "snet" {
    for_each = var.subnets
    name = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
address_prefixes = each.value.address_prefixes 
}

variable "subnets" {
    type = map(object({
        name = string
        virtual_network_name = string
        resource_group_name = string
        address_prefixes = list(string)
            }))  
}