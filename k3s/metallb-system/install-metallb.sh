#!/usr/bin/env bash

helm upgrade \
  --install metallb metallb/metallb \
  --create-namespace \
  --namespace metallb-system \
  --wait

kubectl get pods -n metallb-system

cat <<'EOF' | kubectl apply -f -
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: default-pool
  namespace: metallb-system
spec:
  addresses:
    - 192.168.80.100-192.168.80.200
---
apiVersion: metallb.io/v1beta1
kind: L2Advertisement
metadata:
  name: default
  namespace: metallb-system
spec:
  ipAddressPools:
    - default-pool
EOF
