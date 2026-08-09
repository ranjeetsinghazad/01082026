module "rg" {
    source = "../../module/1.resource_group"
    rgs = var.rgs


}

module "vnets" {
    depends_on = [ module.rg ]
source = "../../module/2.virtual_network"
vnets = var.vnets
}

module "subnet" {
    depends_on = [ module.vnets]
    source = "../../module/3.subnet"
    subnets = var.subnets
  
}

module "pip" {
    depends_on = [ module.rg ]
    source = "../../module/4.pip"
    pips = var.pips
  
}

module "nsg" {
    depends_on = [ module.rg ]
    source = "../../module/5.network_security_group"
    nsgs = var.nsgs
  
}

module "nic" {
    depends_on = [ module.pip,module.subnet ]
    source = "../../module/6.network_interface"
    interfaces = var.interfaces
  
}

module "network_association" {
    depends_on = [ module.nsg,module.nic ]
    source = "../../module/7.network_assosiation"
  associations = var.associations
}


module "vm" {
    depends_on = [ module.nic,module.pip ]
    source = "../../module/8.virtual_machine"
    vms = var.vms
  
}

module "stg" {
    depends_on = [ module.rg ]
    source = "../../module/9.storage_account"
    stgs = var.stgs
  
}


# module "vnet_peering" {
#   source   = "./modules/vnet-peering"

#   peerings = var.peerings
# }
