#!/bin/bash
cd mysql
kubectl create -f mysql-storage.yaml
kubectl create -f mysql-volume.yaml
kubectl create -f mysql-deployment.yaml
kubectl create -f mysql-service.yaml
cd ..
cd wordpress
kubectl create -f wordpress-storage.yaml 
kubectl create -f wordpress-volume.yaml
kubectl create -f wordpress-service.yaml
kubectl create -f wordpress-deployment.yaml