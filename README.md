# This Repo builds AKS Infrastructure and deploys Nginx web app in that cluster

# Nginx Web App can also be deployed on Kubeadm or Minikube. If true, clone repo but skip terraform deployment; go straight to step 2 and 3 once on-prem cluster is deployed. 
https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
https://minikube.sigs.k8s.io/docs/start/

# For Azure Cloud Provider, run below to clone repo and run terraform (v1.1.8) to build AKS infrastructure

# Step 1
$ git clone https://github.com/fpoku/tasktwo.git
$ cd tasktwo/tasktwoterraform
$ terraform init
$ terraform apply -var-file=terraform.tfvars

# Use below to log into cluster
$ az aks get-credentials --resource-group rg-tasktwo-stg01 --name aks-tasktwo-stg01

# Step 2

# Run below to deploy nginx app
$ cd tasktwo/deployment
$ kubectl apply -f tasktwo.yaml

# Step 3
# Test App in browser
http://localhost:8080