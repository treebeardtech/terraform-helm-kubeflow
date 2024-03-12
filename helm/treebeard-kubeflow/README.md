# kubeflow-helm

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| admissionWebhook.enabled | bool | `true` |  |
| admissionWebhook.spec.destination.name | string | `"in-cluster"` |  |
| admissionWebhook.spec.destination.namespace | string | `"argocd"` |  |
| admissionWebhook.spec.project | string | `"default"` |  |
| admissionWebhook.spec.source.path | string | `"apps/admission-webhook/upstream/overlays/cert-manager"` |  |
| admissionWebhook.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| admissionWebhook.spec.source.targetRevision | string | `"776d4f4"` |  |
| admissionWebhook.spec.syncPolicy.automated.prune | bool | `false` |  |
| admissionWebhook.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| centralDashboard.enabled | bool | `true` |  |
| centralDashboard.spec.destination.name | string | `"in-cluster"` |  |
| centralDashboard.spec.destination.namespace | string | `"argocd"` |  |
| centralDashboard.spec.project | string | `"default"` |  |
| centralDashboard.spec.source.kustomize.patches[0].patch | string | `"- op: replace\n  path: /data/links\n  value: |\n    {\n      \"menuLinks\": [\n        {\n          \"type\": \"item\",\n          \"link\": \"/jupyter/\",\n          \"text\": \"Notebooks\",\n          \"icon\": \"book\"\n        },\n        {\n          \"type\": \"item\",\n          \"link\": \"/volumes/\",\n          \"text\": \"Volumes\",\n          \"icon\": \"device:storage\"\n        }\n      ],\n      \"externalLinks\": [ ],\n        \"quickLinks\": [\n          {\n            \"text\": \"Create a new Notebook server\",\n            \"desc\": \"Notebook Servers\",\n            \"link\": \"/jupyter/new?namespace=kubeflow\"\n          }\n        ],\n        \"documentationItems\": [\n          {\n            \"text\": \"Getting Started with Kubeflow\",\n            \"desc\": \"Get your machine-learning workflow up and running on Kubeflow\",\n            \"link\": \"https://www.kubeflow.org/docs/started/getting-started/\"\n          }\n        ]\n    }"` |  |
| centralDashboard.spec.source.kustomize.patches[0].target.kind | string | `"ConfigMap"` |  |
| centralDashboard.spec.source.kustomize.patches[0].target.name | string | `"centraldashboard-config"` |  |
| centralDashboard.spec.source.path | string | `"apps/centraldashboard/upstream/overlays/kserve"` |  |
| centralDashboard.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| centralDashboard.spec.source.targetRevision | string | `"776d4f4"` |  |
| centralDashboard.spec.syncPolicy.automated.prune | bool | `false` |  |
| centralDashboard.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| certManager.enabled | bool | `true` |  |
| certManager.spec.destination.name | string | `"in-cluster"` |  |
| certManager.spec.destination.namespace | string | `"cert-manager"` |  |
| certManager.spec.project | string | `"default"` |  |
| certManager.spec.sources[0].chart | string | `"cert-manager"` |  |
| certManager.spec.sources[0].helm.ignoreMissingValueFiles | bool | `true` |  |
| certManager.spec.sources[0].helm.releaseName | string | `"cert-manager"` |  |
| certManager.spec.sources[0].helm.valueFiles | list | `[]` |  |
| certManager.spec.sources[0].helm.values | string | `"installCRDs: true\n"` |  |
| certManager.spec.sources[0].repoURL | string | `"https://charts.jetstack.io"` |  |
| certManager.spec.sources[0].targetRevision | string | `"1.14.3"` |  |
| certManager.spec.syncPolicy.automated.prune | bool | `false` |  |
| certManager.spec.syncPolicy.syncOptions[0] | string | `"CreateNamespace=true"` |  |
| certManager.spec.syncPolicy.syncOptions[1] | string | `"ServerSideApply=true"` |  |
| dex.enabled | bool | `true` |  |
| dex.spec.destination.name | string | `"in-cluster"` |  |
| dex.spec.destination.namespace | string | `"argocd"` |  |
| dex.spec.project | string | `"default"` |  |
| dex.spec.source.path | string | `"common/dex/overlays/istio"` |  |
| dex.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| dex.spec.source.targetRevision | string | `"776d4f4"` |  |
| dex.spec.syncPolicy.automated.prune | bool | `false` |  |
| dex.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| exampleProfile.enabled | bool | `true` |  |
| exampleProfile.spec.destination.name | string | `"in-cluster"` |  |
| exampleProfile.spec.destination.namespace | string | `"argocd"` |  |
| exampleProfile.spec.project | string | `"default"` |  |
| exampleProfile.spec.source.path | string | `"common/user-namespace/base"` |  |
| exampleProfile.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| exampleProfile.spec.source.targetRevision | string | `"776d4f4"` |  |
| exampleProfile.spec.syncPolicy.automated.prune | bool | `false` |  |
| exampleProfile.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| gateway.enabled | bool | `true` |  |
| gateway.spec.destination.name | string | `"in-cluster"` |  |
| gateway.spec.destination.namespace | string | `"istio-system"` |  |
| gateway.spec.project | string | `"default"` |  |
| gateway.spec.sources[0].chart | string | `"gateway"` |  |
| gateway.spec.sources[0].helm.ignoreMissingValueFiles | bool | `true` |  |
| gateway.spec.sources[0].helm.releaseName | string | `"istio-ingressgateway"` |  |
| gateway.spec.sources[0].helm.valueFiles | list | `[]` |  |
| gateway.spec.sources[0].helm.values | string | `"service:\n  type: ClusterIP\nserviceAccount:\n  name: istio-ingressgateway-service-account\nresources:\n  requests:\n    cpu: 10m\n    memory: 64Mi\n  limits:\n    cpu: 2000m\n    memory: 1024Mi\n"` |  |
| gateway.spec.sources[0].repoURL | string | `"https://istio-release.storage.googleapis.com/charts"` |  |
| gateway.spec.sources[0].targetRevision | string | `"1.18.7"` |  |
| gateway.spec.syncPolicy.automated.prune | bool | `false` |  |
| gateway.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| istioBase.enabled | bool | `true` |  |
| istioBase.spec.destination.name | string | `"in-cluster"` |  |
| istioBase.spec.destination.namespace | string | `"istio-system"` |  |
| istioBase.spec.project | string | `"default"` |  |
| istioBase.spec.sources[0].chart | string | `"base"` |  |
| istioBase.spec.sources[0].helm.ignoreMissingValueFiles | bool | `true` |  |
| istioBase.spec.sources[0].helm.releaseName | string | `"istio-base"` |  |
| istioBase.spec.sources[0].helm.valueFiles | list | `[]` |  |
| istioBase.spec.sources[0].repoURL | string | `"https://istio-release.storage.googleapis.com/charts"` |  |
| istioBase.spec.sources[0].targetRevision | string | `"1.18.7"` |  |
| istioBase.spec.syncPolicy.automated.prune | bool | `false` |  |
| istioBase.spec.syncPolicy.syncOptions[0] | string | `"CreateNamespace=true"` |  |
| istioBase.spec.syncPolicy.syncOptions[1] | string | `"ServerSideApply=true"` |  |
| istioResources.enabled | bool | `true` |  |
| istioResources.spec.destination.name | string | `"in-cluster"` |  |
| istioResources.spec.destination.namespace | string | `"argocd"` |  |
| istioResources.spec.project | string | `"default"` |  |
| istioResources.spec.source.path | string | `"common/istio-1-17/kubeflow-istio-resources/base"` |  |
| istioResources.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| istioResources.spec.source.targetRevision | string | `"776d4f4"` |  |
| istioResources.spec.syncPolicy.automated.prune | bool | `false` |  |
| istioResources.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| istiod.enabled | bool | `true` |  |
| istiod.spec.destination.name | string | `"in-cluster"` |  |
| istiod.spec.destination.namespace | string | `"istio-system"` |  |
| istiod.spec.project | string | `"default"` |  |
| istiod.spec.sources[0].chart | string | `"istiod"` |  |
| istiod.spec.sources[0].helm.ignoreMissingValueFiles | bool | `true` |  |
| istiod.spec.sources[0].helm.releaseName | string | `"istiod"` |  |
| istiod.spec.sources[0].helm.valueFiles | list | `[]` |  |
| istiod.spec.sources[0].helm.values | string | `"pilot:\n  resources:\n    requests:\n      cpu: 10m\n      memory: 128Mi\nglobal:\n  proxy:\n    resources:\n      requests:\n        cpu: 10m\n        memory: 64Mi\n"` |  |
| istiod.spec.sources[0].repoURL | string | `"https://istio-release.storage.googleapis.com/charts"` |  |
| istiod.spec.sources[0].targetRevision | string | `"1.18.7"` |  |
| istiod.spec.syncPolicy.automated.prune | bool | `false` |  |
| istiod.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| jupyterWebApp.enabled | bool | `true` |  |
| jupyterWebApp.spec.destination.name | string | `"in-cluster"` |  |
| jupyterWebApp.spec.destination.namespace | string | `"argocd"` |  |
| jupyterWebApp.spec.project | string | `"default"` |  |
| jupyterWebApp.spec.source.path | string | `"apps/jupyter/jupyter-web-app/upstream/overlays/istio"` |  |
| jupyterWebApp.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| jupyterWebApp.spec.source.targetRevision | string | `"776d4f4"` |  |
| jupyterWebApp.spec.syncPolicy.automated.prune | bool | `false` |  |
| jupyterWebApp.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| kubeflowNamespace.enabled | bool | `true` |  |
| kubeflowNamespace.spec.destination.name | string | `"in-cluster"` |  |
| kubeflowNamespace.spec.destination.namespace | string | `"argocd"` |  |
| kubeflowNamespace.spec.project | string | `"default"` |  |
| kubeflowNamespace.spec.source.path | string | `"common/kubeflow-namespace/base"` |  |
| kubeflowNamespace.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| kubeflowNamespace.spec.source.targetRevision | string | `"776d4f4"` |  |
| kubeflowNamespace.spec.syncPolicy.automated.prune | bool | `false` |  |
| kubeflowNamespace.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| kubeflowRoles.enabled | bool | `true` |  |
| kubeflowRoles.spec.destination.name | string | `"in-cluster"` |  |
| kubeflowRoles.spec.destination.namespace | string | `"argocd"` |  |
| kubeflowRoles.spec.project | string | `"default"` |  |
| kubeflowRoles.spec.source.path | string | `"common/kubeflow-roles/base"` |  |
| kubeflowRoles.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| kubeflowRoles.spec.source.targetRevision | string | `"776d4f4"` |  |
| kubeflowRoles.spec.syncPolicy.automated.prune | bool | `false` |  |
| kubeflowRoles.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| notebookController.enabled | bool | `true` |  |
| notebookController.spec.destination.name | string | `"in-cluster"` |  |
| notebookController.spec.destination.namespace | string | `"argocd"` |  |
| notebookController.spec.project | string | `"default"` |  |
| notebookController.spec.source.path | string | `"apps/jupyter/notebook-controller/upstream/overlays/kubeflow"` |  |
| notebookController.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| notebookController.spec.source.targetRevision | string | `"776d4f4"` |  |
| notebookController.spec.syncPolicy.automated.prune | bool | `false` |  |
| notebookController.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| oidcAuthService.enabled | bool | `true` |  |
| oidcAuthService.spec.destination.name | string | `"in-cluster"` |  |
| oidcAuthService.spec.destination.namespace | string | `"argocd"` |  |
| oidcAuthService.spec.project | string | `"default"` |  |
| oidcAuthService.spec.source.path | string | `"common/oidc-client/oidc-authservice/base"` |  |
| oidcAuthService.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| oidcAuthService.spec.source.targetRevision | string | `"776d4f4"` |  |
| oidcAuthService.spec.syncPolicy.automated.prune | bool | `false` |  |
| oidcAuthService.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| profiles.enabled | bool | `true` |  |
| profiles.spec.destination.name | string | `"in-cluster"` |  |
| profiles.spec.destination.namespace | string | `"argocd"` |  |
| profiles.spec.project | string | `"default"` |  |
| profiles.spec.source.path | string | `"apps/profiles/upstream/overlays/kubeflow"` |  |
| profiles.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| profiles.spec.source.targetRevision | string | `"776d4f4"` |  |
| profiles.spec.syncPolicy.automated.prune | bool | `false` |  |
| profiles.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| pvcViewerController.enabled | bool | `true` |  |
| pvcViewerController.spec.destination.name | string | `"in-cluster"` |  |
| pvcViewerController.spec.destination.namespace | string | `"argocd"` |  |
| pvcViewerController.spec.project | string | `"default"` |  |
| pvcViewerController.spec.source.path | string | `"apps/pvcviewer-controller/upstream/default"` |  |
| pvcViewerController.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| pvcViewerController.spec.source.targetRevision | string | `"776d4f4"` |  |
| pvcViewerController.spec.syncPolicy.automated.prune | bool | `false` |  |
| pvcViewerController.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
| volumesWebApp.enabled | bool | `true` |  |
| volumesWebApp.spec.destination.name | string | `"in-cluster"` |  |
| volumesWebApp.spec.destination.namespace | string | `"argocd"` |  |
| volumesWebApp.spec.project | string | `"default"` |  |
| volumesWebApp.spec.source.path | string | `"apps/volumes-web-app/upstream/overlays/istio"` |  |
| volumesWebApp.spec.source.repoURL | string | `"https://github.com/kubeflow/manifests"` |  |
| volumesWebApp.spec.source.targetRevision | string | `"776d4f4"` |  |
| volumesWebApp.spec.syncPolicy.automated.prune | bool | `false` |  |
| volumesWebApp.spec.syncPolicy.syncOptions[0] | string | `"ServerSideApply=true"` |  |
