variable "logging_folder_settings" {
  description = <<EOT
Map of logging_folder_settings, attributes below
Required:
    - folder
Optional:
    - disable_default_sink
    - kms_key_name
    - storage_location
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    folder               = string
    disable_default_sink = optional(bool)
    kms_key_name         = optional(string)
    storage_location     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

