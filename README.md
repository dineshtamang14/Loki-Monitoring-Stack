# Monitoring Stack

# Steps to check on grafana loki chart
```sh
helm repo add grafana https://grafana.github.io/helm-charts
```

```sh
helm repo update
```

```sh
helm search repo grafana
```

```sh
helm show values grafana/loki-stack > loki-stack-values.yml
```

