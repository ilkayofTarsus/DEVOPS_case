variable "project_id" {
  description = "Google Cloud Proje ID"
  type        = string
  default     = "avian-pact-396013" 
}

variable "region" {
  description = "Kaynakların kurulacağı bölge"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Kubernetes Cluster ismi"
  type        = string
  default     = "mern-python-cluster"
}