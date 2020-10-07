# Deploy WordPress using Kops
###### download kops
```
. kops binary download
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
```

###### aws cli setup to enable ubuntu to interact with aws.
```
apt-get update
apt-get install -y python3-pip 
pip3 install awscli
aws --version
```

###### kubectl installation (K8s cli)
```
snap install kubectl --classic
kubectl version
ssh-keygen -f .ssh/id_rsa
```

###### Environment variables setup -- Remember cluster name should ends with k8s.local
```
updated these two vars in .bashrc & .profile in ~ dir.
export KOPS_CLUSTER_NAME=advith.k8s.local
export KOPS_STATE_STORE=s3://kops-state-advith-bucket
```

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
