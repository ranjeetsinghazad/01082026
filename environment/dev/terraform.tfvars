rgs ={
    rg1 = {
        name = "rg001"
        location = "centralindia"
    }
}

vnets = {
 vnet1 = {
name = "vnet001"
location = "centralindia"
resource_group_name = "rg001"
address_space = ["10.0.0.0/24"]
}
}


subnets = {
subnet1 = {
    name = "subnet001"
  virtual_network_name = "vnet001"
  resource_group_name = "rg001"
address_prefixes = ["10.0.0.0/26"]
}
}


pips = {
    pip1 = {
    name = "pip001"
  location = "centralindia"
  resource_group_name = "rg001"
  allocation_method = "Static"

    }
}


nsgs = {
    nsg1 = {
    name = "nsg001"
  location = "centralindia"
  resource_group_name = "rg001"
    rule_name = "securty_rule_inbound"
    access = "Allow"
    direction = "Inbound"
    protocol = "Tcp"
    priority = 100
    source_port_range = "*"
destination_port_ranges = [22,80]
source_address_prefix = "*"
destination_address_prefix = "*"
    }
  }



  interfaces = {
    nic1 = {
    name = "nic001"
    location = "centralindia"
  resource_group_name = "rg001"
    configuration_name = "configuration_name001"
    private_ip_address_allocation = "Dynamic"
    nic_subnet_name = "subnet001"
    nic_public_ip_name = "pip001"
    virtual_network_name = "vnet001"
  }
    }

associations = {
  association1 = {

name = "association001"
        virtual_network_name = "vnet001"
        resource_group_name = "rg001"
        network_interface_name = "nic001"
        rg_name = "rg001"
        nsg_name = "nsg001"
        
           }
           }


           vms = {
            vm1= {
    name = "vm001"
    location = "centralindia"
    resource_group_name = "rg001"
    size = "Standard_D2s_v3"
    admin_username = "vm1"
    admin_password = "Ranjeet@1234"
disable_authentication_password = "false"
  cashing = "ReadWrite"
  storage_account_type = "Standard_LRS"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    network_interface_name = "nic001"
    rg_name = "rg001"
  }
            }

   stgs = {
    stg1 = {
  name = "azadstg001"
    location = "centralindia"
    resource_group_name = "rg001"
  account_tier = "Standard"
  account_replication_type = "LRS"
    }
}

peerings = {
  p1 = {
    peering_name        = "vnet1-to-vnet2"
    resource_group_name = "rg-network"
    source_vnet_name    = "vnet1"
    remote_vnet_name    = "vnet2"
  }

  p2 = {
    peering_name        = "vnet2-to-vnet1"
    resource_group_name = "rg-network"
    source_vnet_name    = "vnet2"
    remote_vnet_name    = "vnet1"
  }
}