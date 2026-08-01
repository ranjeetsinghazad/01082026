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