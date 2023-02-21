#!/bin/bash

minipath="/home/llanos/.minikube"
kubepath="/home/llanos/.kube"

minikube start --cpus=2 --memory=4g $@
echo "copying profiles"
#you must run minikube manually once first
#onyl makes sense if you have wsl and windows and wnat to use lens

cp -r $minipath "$kubepath/home/llanos/.minikube"