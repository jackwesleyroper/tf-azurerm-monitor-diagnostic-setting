variable "name" {
  type        = string
  description = "Specifies the name of the Diagnostic Setting."
}

variable "target_resource_id" {
  type        = string
  description = "The ID of an existing Resource on which to configure Diagnostic Settings."
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent."
  default     = null
}

variable "log_analytics_destination_type" {
  type        = string
  description = "When set to 'Dedicated' logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy AzureDiagnostics table. This setting will only have an effect if a log_analytics_workspace_id is provided, and the resource is available for resource-specific logs. As of July 2019, this only includes Azure Data Factory."
  default     = null
}

variable "logs_category" {
  description = "A list of objects representing Monitor Diagnostic Logs."
  default     = {}
}

variable "logs_category_group" {
  description = "A list of objects representing Monitor Diagnostic Logs."
  default     = {}
}

variable "metrics" {
  description = "A list of objects representing Monitor Diagnostic Metrics."
  default     = {}
}

variable "storage_account_id" {
  type        = string
  description = "Specifies the ID of a Storage Account where Diagnostics Data should be sent."
  default     = null
}

variable "eventhub_name" {
  type        = string
  description = "Specifies the name of the Event Hub where Diagnostics Data should be sent."
  default     = null
}

variable "eventhub_authorization_rule_id" {
  type        = string
  description = "Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data."
  default     = null
}