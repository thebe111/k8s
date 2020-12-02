# KUBERNETES

### schema

![kubernetes schema](./assets/kubernetes_schema.png "kubernetes schema")

### concepts

- `pod`: make the management of containers
- `replica set/ deployment`: have similar functions - make the management of image version and rules

**obs:** replica set is responsible to build another pod when any pod is down

- `service`: expose the deployment on externally

### tools to execute on localhost

- kind
- minikube

### graphical tools

- dashboard - only on minikube/ local
- [lens](https://k8slens.dev/)

### interfaces

- `kubeadm`: automate cluster build proccess
- `kubelet`: make the exchange of messages - interface between docker and k8s
- `kubectl`: CLI of interaction
- `control plane`: only on master node
  - `etcd`: distributed storage with key/ value
  - `kube-apiserver`: api of k8s - rest standard
  - `kube-controller-manager`: performs the monitoring and others process
  - `kube-scheduler`: work as a load balancer
  - `kube-proxy`: add firewall rules and work with nodes communication

### network plugins

- flannel
- weave

### supported formats for config map

- yaml - preferential
- json

### types

- Pod
- Node
- Deployment
- ReplicaSet
- Service

### services types

- `ClusterIP`: expose the service only on internal network
- `NodePort`: expose the service on each node in a static port

```shell
# to access this

<node-ip-address>:<node-port>
```

- `ExternalName`: map the service to a name - e.g: mysite.k8s.com
- `LoadBalancer`: make a load balancer - internally uses node port type

### obs


```shell
# to access minikube pod need to do a port forward

kubectl port-forward service/<service-name> <local-port>:<service-port>
```
