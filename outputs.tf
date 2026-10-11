output "logging_folder_settings_id" {
  description = "Map of id values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no id are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logging_folder_settings_disable_default_sink" {
  description = "Map of disable_default_sink values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no disable_default_sink are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.disable_default_sink if v.disable_default_sink != null }
}
output "logging_folder_settings_folder" {
  description = "Map of folder values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no folder are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "logging_folder_settings_kms_key_name" {
  description = "Map of kms_key_name values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no kms_key_name are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "logging_folder_settings_kms_service_account_id" {
  description = "Map of kms_service_account_id values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no kms_service_account_id are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.kms_service_account_id if v.kms_service_account_id != null && length(v.kms_service_account_id) > 0 }
}
output "logging_folder_settings_logging_service_account_id" {
  description = "Map of logging_service_account_id values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no logging_service_account_id are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.logging_service_account_id if v.logging_service_account_id != null && length(v.logging_service_account_id) > 0 }
}
output "logging_folder_settings_name" {
  description = "Map of name values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no name are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logging_folder_settings_storage_location" {
  description = "Map of storage_location values across all logging_folder_settings, keyed the same as var.logging_folder_settings except keys with no storage_location are omitted"
  value       = { for k, v in google_logging_folder_settings.logging_folder_settings : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}

