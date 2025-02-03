output "cluster1_name" {
  description = "GKE Cluster 1 name"
  value       = module.gke_cluster_1.cluster_name
}

output "cluster1_endpoint" {
  description = "GKE Cluster 1 endpoint"
  value       = module.gke_cluster_1.endpoint
}

output "cluster2_name" {
  description = "GKE Cluster 2 name"
  value       = module.gke_cluster_2.cluster_name
}

output "cluster2_endpoint" {
  description = "GKE Cluster 2 endpoint"
  value       = module.gke_cluster_2.endpoint
}
