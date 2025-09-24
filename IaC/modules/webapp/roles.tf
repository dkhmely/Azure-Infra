resource "azurerm_role_assignment" "web_app_acr_pull" {
  scope                = var.acr_role_assignment_scope_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.web_app.identity[0].principal_id
}

resource "azurerm_role_assignment" "kv_reader" {
  scope                = var.kv_role_assignment_scope_id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_linux_web_app.web_app.identity[0].principal_id
}