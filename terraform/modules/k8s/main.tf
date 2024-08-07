resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.zone
  project            = var.project_id
  initial_node_count = var.initial_node_count

  node_config {
    machine_type    = var.machine_type
    disk_size_gb    = var.disk_size_gb
    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    disk_type       = var.disk_type
  }

  min_master_version = "latest"
  deletion_protection = false
}

resource "google_container_node_pool" "primary_nodes" {
  name       = var.node_pool_name
  cluster    = google_container_cluster.primary.name
  location   = var.zone
  project    = var.project_id
  node_count = var.initial_node_count

  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
  }

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_upgrade = true
  }
}

