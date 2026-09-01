resource"azurerm_resource_group" "rg1" {
    name = "maruti-rg"
    location ="eastus"
}

resource "azurerm_storage_account" "stg1" {
    depends_on              = [azurerm_resource_group.rg1]
    name                     = "marutistorage"
    resource_group_name      = azurerm_resource_group.rg1.name
    location                 = azurerm_resource_group.rg1.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}