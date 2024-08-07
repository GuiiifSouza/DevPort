variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the cluster"
  type        = number
}

variable "min_node_count" {
  description = "The minimum number of nodes in the node pool"
  type        = number
}

variable "max_node_count" {
  description = "The maximum number of nodes in the node pool"
  type        = number
}

variable "machine_type" {
  description = "The machine type for the nodes"
  type        = string
}

variable "disk_size_gb" {
  description = "The disk size in GB for each node"
  type        = number
}

variable "disk_type" {
  description = "The disk type for each node (e.g., pd-standard, pd-ssd)"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnetwork_name" {
  description = "The name of the subnetwork"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the Kubernetes cluster"
  type        = string
}

variable "ip_cidr_range" {
  description = "The CIDR range for the subnetwork"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "zone" {
  description = "The GCP zone to deploy the resources"
  type        = string
}

