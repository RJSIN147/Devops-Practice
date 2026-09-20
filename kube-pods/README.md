# Devops-Practice

## StatefulSet vs DaemonSet vs Deployment

| Resource | Use it for |
| --- | --- |
| **Deployment** | Stateless apps like web apps or APIs. Pods are interchangeable. |
| **StatefulSet** | Databases or clusters where each pod needs a fixed name and its own storage. |
| **DaemonSet** | Tools that must run on every node, like log or monitoring agents. |

**Quick rule:** Deployment = app replicas, StatefulSet = data with identity, DaemonSet = one pod per node.

## FQDN (Fully Qualified Domain Name)

An FQDN is the complete DNS name used to reach something inside Kubernetes.

`<service-name>.<namespace>.svc.cluster.local`

Example: `mysql.default.svc.cluster.local` reaches the `mysql` service in the `default` namespace. Inside the same namespace, `mysql` is usually enough.
