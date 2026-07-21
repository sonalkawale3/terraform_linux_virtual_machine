module "resource_group"{
    source ="../../module/01_rg"
    rgs = var.rgs
}

module "vnet"{
    depends_on=[module.resource_group]
    source = "../../module/02_vnet"
    vnets = var.vnets
}

module "subnet"{
    depends_on=[module.vnet]
    source = "../../module/03_subnet"
    subnets = var.subnets
}

module "pip"{
    depends_on=[module.subnet]
    source = "../../module/04_pip"
    pips = var.pips
}

module "nic"{
    depends_on=[module.pip]
    source= "../../module/05_nic"
    nics = var.nics
}

module "network"{
    depends_on =[module.nic]
    source ="../../module/06_network"
    nsgs = var.nsgs
}

module "association"{
    depends_on =[module.network]
    source ="../../module/07_association"
    association1 = var.association1
}

module "vm"{
    depends_on=[module.association]
    source = "../../module/08_vm"
    vms =var.vms
}