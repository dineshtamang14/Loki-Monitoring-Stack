output "loki_stack_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value       = helm_release.loki_stack.metadata
}
