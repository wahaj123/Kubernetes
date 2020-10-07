#!/bin/bash
cd Python
kubectl create -f python-deployment.yaml
kubectl create -f python-service.yaml