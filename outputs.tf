output "id" {
  value       = azurerm_monitor_diagnostic_setting.diagnostic_setting.id
  description = "The ID of the Diagnostic Setting."
}

output "name" {
  value       = azurerm_monitor_diagnostic_setting.diagnostic_setting.name
  description = "The name of the Diagnostic Setting."
}
