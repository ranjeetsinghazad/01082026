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
