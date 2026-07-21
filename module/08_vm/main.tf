resource "azurerm_linux_virtual_machine" "vm"{
    for_each=var.vms
    name=each.value.name
    location =each.value.location
    resource_group_name = each.value.resource_group_name
    size =each.value.size
    admin_username = each.value.username
    admin_password=each.value.password
    disable_password_authentication = each.value.disable_password_authentication
    network_interface_ids = [data.azurerm_network_interface.nicb[each.key].id]
    os_disk{
        caching=each.value.caching
        storage_account_type = each.value.storage_account_type
    }

    source_image_reference {
      publisher=each.value.publisher
      offer= each.value.offer
      version =each.value.version
      sku =each.value.sku
    }
}