output "cluster_name" {
  description = "The name of the Kubernetes cluster"
  value       = google_container_cluster.primary.name
}

output "node_pool_name" {
  description = "The name of the node pool"
  value       = google_container_node_pool.primary_nodes.name
}

output "endpoint" {
  description = "GKE Cluster endpoint"
  value       = google_container_cluster.primary.endpoint
}

