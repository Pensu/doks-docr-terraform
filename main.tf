variable do_token {}

provider digitalocean {
    token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "pensu-test" {
  name   = "pensu-test"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.19.3-do.2"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 1
  }
}

resource "digitalocean_container_registry" "pensu-registry" {
  name = "pensu-registry"
  subscription_tier_slug = "basic"
}

output "Kubernetes_master" {
  value = digitalocean_kubernetes_cluster.pensu-test.endpoint
}

output "Registry_endpoint" {
  value = digitalocean_container_registry.pensu-registry.endpoint
}
