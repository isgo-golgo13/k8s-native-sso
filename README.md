# Kubernetes-Native Turn-Key SSO using Ory Hydra
Kubernetes-Native Turn-Key SSO OIDC OAuth 2.0 using Ory Hydra

![ory-hydra-turn-key-k8s-architecture](docs/hydra-sso.png)

## Project Helm Chart

```shell
sso-ory-hydra
    ├── Chart.yaml
    ├── templates
    │   ├── vault-auto-init-job.yaml
    │   ├── vault-auto-unseal-job.yaml
    │   ├── vault-auto-pki.yaml
    │   ├── vault-auto-register-k8s-auth.yaml
    │   ├── vault-init-configmap.yaml
    │   ├── vault-unseal-configmap.yaml
    │   ├── vault-k8s-auth-configmap.yaml
    │   ├── cert-manager-issuer.yaml
    │   ├── external-dns-deployment.yaml
    │   ├── core-dns-config.yaml
    │   ├── nginx-gateway.yaml
    │   ├── client-gateway.yaml
    │   ├── client-route.yaml
    │   ├── external-secrets.yaml
    ├── values.yaml
    └── values-override.yaml
```
