variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the resources"
  type        = string
}

variable "zone" {
  description = "The GCP zone to deploy the resources"
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the cluster"
  type        = number
}

variable "min_node_count" {
  description = "Minimum number of nodes in the node pool"
  type        = number
}

variable "max_node_count" {
  description = "Maximum number of nodes in the node pool"
  type        = number
}

variable "machine_type" {
  description = "The machine type for the Kubernetes nodes"
  type        = string
}

variable "disk_size_gb" {
  description = "The disk size in GB for each Kubernetes node"
  type        = number
}

variable "service_account_key" {
  description = "The path to the service account key JSON file"
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

variable "ip_cidr_range" {
  description = "The IP CIDR range for the subnetwork"
  type        = string
}

variable "name_node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

