resource "helm_release" "grafana" {
  depends_on = [ helm_release.promtail, helm_release.loki ]
  name       = "grafana-${local.env}"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  version    = "6.16.6"

  set {
    name  = "adminPassword"
    value = "dinesh"  
  }
}
