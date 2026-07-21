resource "azurerm_network_interface_security_group_association" "nsgnic"{
    for_each= var.association1
    network_interface_id = data.azurerm_network_interface.nicblock1[each.key].id
    network_security_group_id = data.azurerm_network_security_group.nsg1[each.key].id
}