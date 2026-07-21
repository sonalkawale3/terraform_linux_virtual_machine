data "azurerm_subnet" "subnetblock" {
  for_each = var.nics
  name = each.value.subname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_public_ip" "pipblock" {
  for_each = var.nics
  name = each.value.pipname
  resource_group_name = each.value.resource_group_name
}