#!/bin/bash
cd mysql
kubectl delete -f mysql-deployment.yaml
kubectl delete -f mysql-service.yaml
kubectl delete -f mysql-storage.yaml
kubectl delete -f mysql-volume.yaml
cd ..
cd wordpress
kubectl delete -f wordpress-deployment.yaml
kubectl delete -f wordpress-service.yaml
kubectl delete -f wordpress-volume.yaml
kubectl delete -f wordpress-storage.yaml