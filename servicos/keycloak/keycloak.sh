#!/bin/bash


# # Comando para obter a lista de nomes de repositórios
# repo_names=$(helm repo list -o json | jq -r '.[] | .name' | tr '\n' ',' | sed 's/,$//')

# echo $repo_names

# # Nome a ser verificado
# nome_a_ser_verificado="keycloak"

# # Verificar se o nome está na lista
# if [[ $repo_names =~ $nome_a_ser_verificado ]]; then
#     echo "O nome $nome_a_ser_verificado está na lista."
#     # Fazer algo aqui se o nome estiver na lista
# else
#     echo "O nome $nome_a_ser_verificado não está na lista."
   
#     helm install $nome_a_ser_verificado bitnami/keycloak
#     # Fazer algo aqui se o nome não estiver na lista
# fi

kubectl create ns iam

helm install keycloak bitnami/keycloak \
    --set auth.adminUser=keycloak \
    --set auth.adminPassword=keycloak \
    --set kubernetes.io/hostname=kong-worker2 \
    --namespace iam
