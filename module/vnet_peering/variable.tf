variable "peerings" {
  type = map(object({
    peering_name        = string
    resource_group_name = string
    source_vnet_name    = string
    remote_vnet_name    = string
  }))
}