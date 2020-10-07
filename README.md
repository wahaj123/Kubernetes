# Deploy WordPress using Kops
###### Command to create cluster
```
kops create cluster \
--node-count=1 \
--node-size="t2.small" \
--master-size="t2.medium" \
--zones=us-east-2a \
--name=${KOPS_CLUSTER_NAME} --yes

kops validate cluster
kops delete cluster --name=  --yes
```

###### Kubectle commands
```
kubectl get po
kubectl get pvc
kubectl get sc
kubectl get svc
kubectle get endpoints
```
