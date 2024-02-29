

resource "helm_release" "oidc_authservice" {
  name      = "oidc-authservice"
  namespace = "argo-cd"
  chart     = "${path.module}/charts/argo_app"
  values = [
    <<EOF
    name: oidc-authservice
    repoURL: https://github.com/kubeflow/manifests
    path: common/oidc-client/oidc-authservice/base
    targetRevision: 776d4f4
    EOF
  ]
  depends_on = [
    module.istio_install,
    var.dependency
  ]
}

resource "helm_release" "dex" {
  name      = "dex"
  namespace = "argo-cd"
  chart     = "${path.module}/charts/argo_app"
  values = [
    <<EOF
    name: dex
    repoURL: https://github.com/kubeflow/manifests
    path: common/dex/overlays/istio
    targetRevision: 776d4f4
    EOF
  ]
  depends_on = [
    helm_release.oidc_authservice
  ]
}
