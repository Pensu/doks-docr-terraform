# doks-docr-terraform
Sample terraform code to create DigitalOcean Kubernetes(DOKS) and DigitalOcean Container Registry(DOCR)

This repo uses 2 terraform providers - digitalocean_kubernetes_cluster and digitalocean_container_registry. 

## How to use

1. Export DigitalOcean token

```
export TF_VAR_do_token="Your_token_here"
```

2. Run ```terraform init```
This will initialize the terrafrom providers.

3. Run ```terrafrom plan```
This will provide outline of what is going to happen once you run the plan.

4. Run ```terraform apply```
This will make the changes mentioned in main.tf file.
