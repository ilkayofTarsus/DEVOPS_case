# terraform/main.tf
provider "google" {
  project = "avian-pact-396013" 
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "mern-python-cluster"
  location = "us-central1"

  # Güvenlik ve maliyet için küçük bir başlangıç yapıyoruz
  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"
    # Siber güvenlik: En az yetki prensibiyle servis hesaplarını kısıtlıyoruz
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}