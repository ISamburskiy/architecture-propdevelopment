set -e

kubectl apply -f ./yaml/namespace.yaml

kubectl apply -f ./yaml/deployments.yaml

kubectl apply -f ./yaml/policies.yaml