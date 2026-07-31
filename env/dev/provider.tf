terraform{
    required_providers{
        azurerm ={
            source= "hashicorp/azurerm"
            version = "4.1.0"
        }
    }


backend "azurerm" {
    resource_group_name  = "NetworkWatcherRG"
    storage_account_name = "forasrpipeline"
    container_name       = "virtualmachine"
    key                  = "dev.tfstate"
  }
}
provider "azurerm"{
    features{}
    subscription_id ="05dbb74f-6152-4a1d-a1fd-c49be5c3fd99"
}
