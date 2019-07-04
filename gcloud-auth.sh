#!/bin/sh

set -e

echo ${GCLOUD_SERVICE_KEY} > ${HOME}/gcloud-service-key.json
gcloud auth activate-service-account --key-file ${HOME}/gcloud-service-key.json
gcloud --quiet config set project velotio-playground
gcloud config set compute/zone us-east1-b

#Setup basic gcloud config
gcloud --quiet config set container/cluster standard-cluster-1 
gcloud --quiet container clusters get-credentials standard-cluster-1 
