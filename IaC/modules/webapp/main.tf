resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.name}-asp"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = var.sku_name

}

resource "azurerm_linux_web_app" "web_app" {
  name                = "${var.name}-webapp"
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  identity {
    type = "SystemAssigned"
  }

  site_config {}

  app_settings = {
    "DB_HOST" = var.db_host
    "DB_USER" = var.db_user
    "DB_PASS" = "@Microsoft.KeyVault(SecretUri=${var.db_password_secret_url})"
    "DB_NAME" = var.db_name
    "DB_PORT" = 3306
  }
}