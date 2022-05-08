location = "northeurope"

resource_group = "rg-tasktwo-stg01"

resource_group_vnet = "rg-tasktwostg"

subnet_network_name = "vnsub-tasktwo-stg01"

virtual_network_name = "vn-vpntasktwostg"

aks_name = "aks-tasktwo-stg01"

admin_username = "francis"

node_count = 2    #this is the count of aks-main nodes; keep value of 2 unless cluster has expanded # 

auto_scaling_default_node = "true"   # if not true, then set to "false" #

node_min_count = 2   # node_min_count must = node_count - this is extremely important when trying to expand live cluster #

node_max_count = 3   # can be amended, but keep value of 2 unless cluster has expanded #      

service_cidr =  "10.9.0.0/16"  

dns_service_ip =  "10.9.0.10" 

pod_cidr =  "10.10.0.0/16" 

max_pods = 110  # how many pods are allowed to schedule per node #

docker_bridge_cidr =  "172.18.0.1/16" # default, don't change #

tags = {

environment = "staging"

technical_owner = "jay.mistry@kantar.com"

}