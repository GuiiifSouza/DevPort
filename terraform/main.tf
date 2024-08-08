module "provider" {
  source      = "./modules/provider"
  project_id  = var.project_id
  region     = var.region
  zone        = var.zone
}

module "vpc" {
  source           = "./modules/vpc"
  project_id       = var.project_id
  region           = var.region
  zone             = var.zone
  network_name     = var.network_name
  subnetwork_name  = var.subnetwork_name
  ip_cidr_range    = var.ip_cidr_range
}

module "k8s" {
  source               = "./modules/k8s"
  project_id           = var.project_id
  cluster_name         = var.cluster_name
  initial_node_count   = var.initial_node_count
  min_node_count       = var.min_node_count
  max_node_count       = var.max_node_count
  machine_type         = var.machine_type
  disk_size_gb         = var.disk_size_gb
  disk_type            = var.disk_type
  node_pool_name       = var.node_pool_name
  region               = var.region
  zone                 = var.zone
  network_name         = module.vpc.vpc_network_name
  subnetwork_name      = module.vpc.subnetwork_name
  ip_cidr_range        = var.ip_cidr_range
}

