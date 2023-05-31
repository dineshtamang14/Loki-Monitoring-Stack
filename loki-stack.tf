resource "helm_release" "loki" {
  name       = "loki-${local.env}"
  repository = "https://grafana.github.io/loki/charts"
  chart      = "loki-stack"
  version    = "2.5.0"
}

resource "helm_release" "promtail" {
  depends_on = [ helm_release.loki ]
  name       = "promtail-${local.env}"
  repository = "https://grafana.github.io/loki/charts"
  chart      = "promtail"
  version    = "2.5.0"
}
