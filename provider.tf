terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.38.0"
    }
#    kubernetes = {
#      source = "hashicorp/kubernetes"
#      version = "2.30.0"
#    }
#    helm = {
#      source = "hashicorp/helm"
#      version = "2.13.2"
#    }
  }
}

provider "digitalocean" {
  token   = var.do_token
}

#provider "kubernetes" {
#  config_path    = "kubeconfig_do"
#  #config_context = "my-context"
#}

#provider "helm" {
#  kubernetes {
#    config_path    = "kubeconfig_do"
#  }
#}