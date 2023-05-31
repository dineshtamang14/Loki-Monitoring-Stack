resource "helm_release" "loki_stack" {
  name       = "loki-stack-${local.env}"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki-stack"

  # To set the all configurations for the helm chart
  set {
    name  = "loki.enabled"
    value = "true"
  }

  set {
    name  = "loki.persistence.enabled"
    value = "true"
  }
  set {
    name  = "loki.persistence.size"
    value = "1Gi"
  }

  set {
    name  = "promtail.enabled"
    value = "true"
  }

  set {
    name  = "grafana.enabled"
    value = "true"
  }

  set {
    name = "prometheus.enabled"
    value = "true"
  }
}
