#!/bin/sh

set -e

echo ${GOOGLE_AUTH} > /home/aditi/work/sightmachine/velotio-playground-5b92f0621d61.json
gcloud auth activate-service-account --key-file /home/aditi/work/sightmachine/velotio-playground-5b92f0621d61.json
gcloud --quiet config set project velotio-playground
gcloud config set compute/zone us-east1-b

#Setup basic gcloud config
gcloud --quiet config set container/cluster standard-cluster-1 
gcloud --quiet container clusters get-credentials standard-cluster-1 