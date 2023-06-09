#!/usr/bin/env bash

# https://docs.rancherdesktop.io/how-to-guides/setup-NGINX-Ingress-Controller/
helm upgrade \
  --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace \
  --set defaultBackend.enabled=false \
  --wait

kubectl get pods --namespace=ingress-nginx
