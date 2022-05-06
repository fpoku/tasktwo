output "resource_group" {
    description = "Resource group name and location"
    value = var.resource_group  
}

output "location" {
    description = "Azure location"
    value = var.location
}

output "cluster_name" {
  description = "Cluster name to be used in the context of kubectl"
  value = module.aks.cluster_name
}