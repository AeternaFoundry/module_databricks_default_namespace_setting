output "default_namespace_settings_id" {
  description = "Map of id values across all default_namespace_settings, keyed the same as var.default_namespace_settings except keys with no id are omitted"
  value       = { for k, v in databricks_default_namespace_setting.default_namespace_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "default_namespace_settings_etag" {
  description = "Map of etag values across all default_namespace_settings, keyed the same as var.default_namespace_settings except keys with no etag are omitted"
  value       = { for k, v in databricks_default_namespace_setting.default_namespace_settings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "default_namespace_settings_namespace" {
  description = "Map of namespace values across all default_namespace_settings, keyed the same as var.default_namespace_settings except keys with no namespace are omitted"
  value       = { for k, v in databricks_default_namespace_setting.default_namespace_settings : k => one(v.namespace) if v.namespace != null && length(v.namespace) > 0 }
}
output "default_namespace_settings_provider_config" {
  description = "Map of provider_config values across all default_namespace_settings, keyed the same as var.default_namespace_settings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_default_namespace_setting.default_namespace_settings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "default_namespace_settings_setting_name" {
  description = "Map of setting_name values across all default_namespace_settings, keyed the same as var.default_namespace_settings except keys with no setting_name are omitted"
  value       = { for k, v in databricks_default_namespace_setting.default_namespace_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

