variable "rgs" {
  type = map(object({
    name = string
location = string
     
  }))
}
variable "vnets" {
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        address_space = list(string)
    }))
}


variable "subnets" {
    type = map(object({
        name = string
        virtual_network_name = string
        resource_group_name = string
        address_prefixes = list(string)
            }))  
}


variable "pips" {
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        allocation_method = string
            }))  
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

variable "associations" {
    type = map(object({
        name = string
        virtual_network_name = string
        resource_group_name = string
        network_interface_name = string
        rg_name = string
        nsg_name = string
       
            }))  
}


variable "vms" {
  type = map(object({
  name = string
    location =  string
    resource_group_name =  string
    size =  string
    admin_username =  string
    admin_password =  string
disable_authentication_password =  string
  cashing =  string
  storage_account_type =  string
    publisher =  string
    offer     =  string
    sku       =  string
    version   =  string
    network_interface_name = string
     rg_name = string
  }))
}

variable "stgs" {
  type = map(object({
  name = string
    location = string
    resource_group_name = string
  account_tier = string
  account_replication_type = string
  
  }))
}


variable "peerings" {
  type = map(object({
    peering_name        = string
    resource_group_name = string
    source_vnet_name    = string
    remote_vnet_name    = string
  }))
}