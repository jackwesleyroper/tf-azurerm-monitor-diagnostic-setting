resource "azurerm_monitor_diagnostic_setting" "diagnostic_setting" {
  name                           = var.name
  target_resource_id             = var.target_resource_id
  log_analytics_workspace_id     = var.log_analytics_workspace_id
  log_analytics_destination_type = var.log_analytics_destination_type
  storage_account_id             = var.storage_account_id
  eventhub_name                  = var.eventhub_name
  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id

  dynamic "enabled_log" {
    for_each = var.logs_category

    content {
      category = enabled_log.value.category
    }
  }

  dynamic "enabled_log" {
    for_each = var.logs_category_group

    content {
      category_group = enabled_log.value.category_group
    }
  }

  dynamic "metric" {
    for_each = var.metrics

    content {
      category = metric.value.category
      enabled  = metric.value.enabled
    }
  }
}