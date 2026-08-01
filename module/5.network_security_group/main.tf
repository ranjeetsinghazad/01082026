resource "azurerm_network_security_group" "nsg" {
    for_each = var.nsgs
    name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  security_rule{
    name = each.value.rule_name
    access = each.value.access
    direction = each.value.direction
    protocol = each.value.protocol
    priority = each.value.priority
source_port_range = each.value.source_port_range
destination_port_ranges = each.value.destination_port_ranges
source_address_prefix = each.value.source_address_prefix
destination_address_prefix = each.value.destination_address_prefix
  }

}

variable "nsgs" {
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        rule_name  = string
    access = string
    direction = string
    protocol = string
    priority = number
source_port_range = string
destination_port_ranges = list(string)
source_address_prefix = string
destination_address_prefix = string       
        
            }))  
}