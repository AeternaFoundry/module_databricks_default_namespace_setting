variable "default_namespace_settings" {
  description = <<EOT
Map of default_namespace_settings, attributes below
Required:
    - namespace (block):
        - value (optional)
Optional:
    - etag
    - setting_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    etag         = optional(string)
    setting_name = optional(string)
    namespace = object({
      value = optional(string)
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

