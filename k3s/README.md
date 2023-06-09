# k3s

## Install

```shellscript
curl -sfL https://get.k3s.io | sh -s - server --disable servicelb --disable traefik --write-kubeconfig-mode 644
```

## Testing

```shellscript
kubectl create deployment demo --image=httpd
kubectl expose deployment demo --port=80 --target-port=80 --type=LoadBalancer
kubectl create ingress demo-localhost --class=nginx --rule="demo.nws.monster/*=demo:80"
# cleanup
# kubectl delete deployment demo
# kubectl delete svc demo
# kubectl delete ingress demo-localhost
```

## Issues & resolutions

- [x509-certificate-signed-by-unknown-authority-error](https://fabianlee.org/2022/01/29/nginx-ingress-nginx-controller-admission-error-x509-certificate-signed-by-unknown-authority/)
