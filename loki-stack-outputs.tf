output "promtail_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value       = helm_release.promtail.metadata
}

output "loki_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value       = helm_release.loki.metadata
}

output "grafana_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value       = helm_release.grafana.metadata
}