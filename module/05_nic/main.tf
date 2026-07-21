resource "azurerm_network_interface" "nicblock"{
    for_each= var.nics
    name =each.value.name
    location =each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
       name = each.value.nicname
       subnet_id =data.azurerm_subnet.subnetblock[each.key].id
       private_ip_address_allocation =each.value.prvate_allocation
       public_ip_address_id =data.azurerm_public_ip.pipblock[each.key].id
}
}