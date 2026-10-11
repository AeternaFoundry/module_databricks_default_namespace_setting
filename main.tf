resource "databricks_default_namespace_setting" "default_namespace_settings" {
  for_each = var.default_namespace_settings

  etag         = each.value.etag
  setting_name = each.value.setting_name

  namespace {
    value = each.value.namespace.value
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

