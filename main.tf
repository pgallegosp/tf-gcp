terraform {
  backend "gcs" {
    bucket  = "tf-state-file-top-reef-445218-c2"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}

module "gke_cluster_1" {
  source       = "./modules/gke_cluster"
  project_id   = var.project_id
  cluster_name = "cluster-1"
  location     = var.zone1
  network      = var.network
  subnetwork   = var.subnetwork
  node_count   = 1
}

module "gke_cluster_2" {
  source       = "./modules/gke_cluster"
  project_id   = var.project_id
  cluster_name = "cluster-2"
  location     = var.zone2
  network      = var.network
  subnetwork   = var.subnetwork
  node_count   = 2
}
