resource "google_logging_folder_settings" "logging_folder_settings" {
  for_each = var.logging_folder_settings

  folder               = each.value.folder
  disable_default_sink = each.value.disable_default_sink
  kms_key_name         = each.value.kms_key_name
  storage_location     = each.value.storage_location

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

