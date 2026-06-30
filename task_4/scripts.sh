#!/usr/bin/env bash
set -e

# namespaces
kubectl apply -f ./yaml/namespace.yaml

# serviceAccounts
kubectl apply -f ./yaml/sa_services.yaml

# roles
kubectl apply -f ./yaml/role_services.yaml
kubectl apply -f ./yaml/role_developer.yaml

# clusterRoles
kubectl apply -f ./yaml/clRole_admin.yaml

# roleBindings
kubectl apply -f ./yaml/rb_services_services.yaml
kubectl apply -f ./yaml/rb_developer_developers.yaml

# clusterRoleBindings
kubectl apply -f ./yaml/clrb_admin_admins.yaml
