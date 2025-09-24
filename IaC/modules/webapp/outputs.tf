output "app_name" {
  value = azurerm_linux_web_app.web_app.name
}

output "app_identity" {
  value = azurerm_linux_web_app.web_app.identity[0].principal_id
}