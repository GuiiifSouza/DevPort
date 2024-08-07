variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "zone" {
  description = "The GCP zone to deploy the resources"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the resources"
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

