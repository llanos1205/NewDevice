#!/bin/bash

minipath="/home/llanos/.minikube"
kubepath="/home/llanos/.kube"

minikube delete $@
echo "deleting profiles"
#you must run minikube manually once first

sudo rm -r "$kubepath/home/llanos/.minikube"