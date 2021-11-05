## This repo is a basic example of using Terraform to create a K8s cluster on the Spectro Cloud Palette platform.

### This example assumes you have the following:
- A Spectro Cloud SaaS account
- You have already added a cloud account in Palette (Project Settings > Cloud Accounts) This example uses AWS IaaS 
- A Cluster Profile for the cloud environment you will be deploying into Ex: AWS, GCP, VMware, et.

### Usage
- Clone this repo
- cd sc_cluster_simple
- cp terraform.tfvars_example ./terraform.tfvars
- vi terraform.tfvars, i (for insert mode) <enter your unique values>, esc :wq! (to save) 
- *It is not a safe practice to put passwords or secrets in a .tfvars file
- For the sc_username & sc_password use `export TF_VAR_sc_username` `export TF_VAR_sc_password`
