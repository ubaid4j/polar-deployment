### K8s
1. To create/update a standard k8s resource:
    ```shell
      kubectl apply -f k8s
    ```
    where k8s is a file/directory where k8s resources are present.
2. To create/update a kustomize resource:
    ```shell
      kubectl apply -k k8s
    ```
   where k8s is a file/directory where customize/k8s resources are present.