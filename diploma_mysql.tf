provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "rg" {
  name     = "sergey_dyuryagin_tf"
  location = "North Europe"
}

resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "diploma"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "sdyuryagin"
  administrator_password = "p@ssw0rd!!!!"
  backup_retention_days  = 7
  sku_name               = "B_Standard_B1s"
  version = "5.7"
}