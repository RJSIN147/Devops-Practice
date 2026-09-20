# Kubernetes Architecture

Kubernetes runs applications as containers across a group of machines called a **cluster**. A cluster has a **control plane**, which manages the cluster, and **worker nodes**, which run application workloads.

```text
                Control Plane
        +---------------------------+
        | API Server                |
        | Scheduler                 |
        | Controller Manager        |
        | etcd (cluster data store) |
        +-------------+-------------+
                      |
          +-----------+-----------+
          |                       |
    +-----v------+          +-----v------+
    | Worker Node|          | Worker Node|
    | kubelet    |          | kubelet    |
    | kube-proxy |          | kube-proxy |
    | Pods       |          | Pods       |
    +------------+          +------------+
```

- **API Server** receives commands from users and tools such as `kubectl`.
- **Scheduler** chooses a suitable worker node for each Pod.
- **Controller Manager** keeps the actual cluster state aligned with the desired state.
- **etcd** stores cluster configuration and state.
- **Worker nodes** use `kubelet` to run Pods and `kube-proxy` to support networking.
