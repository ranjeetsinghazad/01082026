resource "azurerm_virtual_network_peering" "this" {

  for_each = var.peerings

  name                      = each.value.peering_name
  resource_group_name       = each.value.resource_group_name

  virtual_network_name      = data.azurerm_virtual_network.source[each.key].name
  remote_virtual_network_id = data.azurerm_virtual_network.remote[each.key].id

  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = false
  use_remote_gateways          = false
}