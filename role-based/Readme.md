# Steps
###### 1
```
run ecr command to login
```
###### 2
```
kubectl create secret generic my-registry-key \
    --from-file=.dockerconfigjson=<path/to/.docker/config.json> \
    --type=kubernetes.io/dockerconfigjson
```
###### 3
```
In deployment file: 

      imagePullSecrets:
      - name: my-registry-key
```
