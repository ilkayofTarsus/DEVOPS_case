output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "Oluşturulan Cluster ismi"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "Cluster bağlantı adresi (Endpoint)"
}

output "region" {
  value       = var.region
  description = "Bölge bilgisi"
}