output "communication_service_id" {
  description = "The ID of the Azure Communication Service resource."
  value       = module.azcommunication.communication_service_id
}

output "primary_connection_string" {
  description = "The primary connection string for the Azure Communication Service."
  value       = module.azcommunication.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The secondary connection string for the Azure Communication Service."
  value       = module.azcommunication.secondary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "The primary access key for the Azure Communication Service."
  value       = module.azcommunication.primary_key
  sensitive   = true
}

output "secondary_key" {
  description = "The secondary access key for the Azure Communication Service."
  value       = module.azcommunication.secondary_key
  sensitive   = true
}
