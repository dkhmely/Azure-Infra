module "voter-webapp" {
  source                       = "../modules/webapp"
  name                         = "${var.application}-${var.env}"
  location                     = data.azurerm_resource_group.rg.location
  resource_group_name          = data.azurerm_resource_group.rg.name
  acr_role_assignment_scope_id = azurerm_container_registry.acr.id
  kv_role_assignment_scope_id  = data.azurerm_key_vault.kv.id
  sku_name                     = var.sku_name

  db_host                = "${azurerm_mysql_flexible_server.mysql.name}.mysql.database.azure.com"
  db_user                = "${var.application}${var.env}admin"
  db_password_secret_url = "https://${data.azurerm_key_vault.kv.name}.vault.azure.net/secrets/${azurerm_key_vault_secret.sql_admin_secret.name}"
  db_name                = "${var.application}db"
  subnet_id              = azurerm_subnet.webapp_subnet.id
}
