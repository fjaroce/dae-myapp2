# Big Data Architecture & Engineering - Práctica Kubernetes

En este repositorio se encuentra el código de la práctica de Kubernetes para desplegar la aplicación y conectarla con la base de datos.

## Prerrequisitos
* [docker](https://docs.docker.com/engine/install/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/)
* [helm](https://helm.sh/docs/intro/install/)
* [minikube](https://minikube.sigs.k8s.io/docs/start/)

## Instalación
    minikube start
    helm upgrade --install myapp oci://ghcr.io/fjaroce/dae-myapp2/myapp-chart/myapp --version 0.0.1 --namespace my-namespace --create-namespace
    kubectl wait --for=condition=available --namespace my-namespace deployment/myapp
    kubectl port-forward --namespace my-namespace services/myapp 5000:5000
