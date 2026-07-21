terraform{
    required_providers{
        azurerm ={
            source= "hashicorp/azurerm"
            version = "4.1.0"
        }
    }
}
provider "azurerm"{
    features{}
    subscription_id ="586e3c12-b0f0-4c52-946a-ed23650f6c3a"
}