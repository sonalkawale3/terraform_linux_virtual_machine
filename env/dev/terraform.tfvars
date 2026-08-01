rgs ={
    rg1 ={
        name = "rgs1"
        location = "japan east"
    }
}

vnets={
   vnet1={ 
    name ="vnets1"
    location ="japan east"
    resource_group_name ="rgs1"
    address_space = ["10.0.0.0/16"]
   }
}

subnets ={
    sub1={
        name = "subnet1"
        resource_group_name = "rgs1"
        virtual_network_name= "vnets1"
        address_prefixes = ["10.0.1.0/24"]

    }
      
}

pips={
    pip1 ={
        name = "pubnet1"
        location = "japan east"
        resource_group_name = "rgs1"
        allocation_method = "Static"
    }
}

nics={
    nic1 ={
        name ="nic11"
    location ="japan east"
    resource_group_name = "rgs1"
    nicname = "ipconfig1"
    prvate_allocation = "Dynamic"
    subname = "subnet1"
    virtual_network_name = "vnets1"
    pipname ="pubnet1"
    }
}

nsgs={
    nsgs1 ={
         name ="nsgs1"
        location = "japan east"
         resource_group_name = "rgs1"
         nsname = "nrules"
         priority = "100"
         direction = "Inbound"
         access ="Allow"
         protocol = "Tcp"
         source_port_range ="*"
        destination_port_range ="*"
        source_address_prefix ="*"
        destination_address_prefix ="*"

    }
}

association1={
    asso={
          name="nic11"
            resource_group_name="rgs1"
            nname="nsgs1"

    }
}

vms={
    vm1={
        name="sonal"
        location = "japan east"
        resource_group_name="rgs1"
        size ="Standard_D2s_v3"
        username = "sonal"
        password= "Sonal@123456"
        disable_password_authentication = "false"
        caching="ReadWrite"
        storage_account_type = "Standard_LRS"
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"
        nname ="nic11"
    }
}