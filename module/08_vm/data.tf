data "azurerm_network_interface" "nicb"{
    for_each=var.vms
    name=each.value.nname
    resource_group_name = each.value.  resource_group_name

}