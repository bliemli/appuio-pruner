# APPUiO Pruner

The APPUiO pruner prunes old builds, deployments and registry images on a regular schedule from an OpenShift cluster.


## Installation

```
export PROJECT=appuio-infra
oc new-project $PROJECT
oc adm policy add-cluster-role-to-user edit system:serviceaccount:$PROJECT:default
oc adm policy add-cluster-role-to-user system:image-pruner system:serviceaccount:$PROJECT:default
oc new-app -n $PROJECT https://github.com/appuio/appuio-pruner
```
