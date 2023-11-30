#!/bin/bash
kind create cluster --name kong --config clusterconfig.yaml
kubectl cluster-info --context kind-kong