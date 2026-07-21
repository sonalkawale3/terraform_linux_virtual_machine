data "azurerm_network_interface" "nicblock1"{
    for_each=var.association1
    name=each.value.name
    resource_group_name = each.value.  resource_group_name

}

data "azurerm_network_security_group" "nsg1"{
    for_each=var.association1
     name=each.value.nname
    resource_group_name = each.value.  resource_group_name
    
}