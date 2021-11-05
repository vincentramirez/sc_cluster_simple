## This repo is a basic example of using Terraform to create a K8s cluster on the Spectro Cloud Palette platform.

### This example assumes you have the following:
- A Spectro Cloud SaaS account
- You have already added a cloud account in Palette (Project Settings > Cloud Accounts) This example uses AWS IaaS 
- A Cluster Profile for the cloud environment you will be deploying into Ex: AWS, GCP, VMware, et.

### Usage
- Clone this repo
- cd sc_cluster_simple
- cp terraform.tfvars_example ./terraform.tfvars
- Type `vi terraform.tfvars`, `i` (for insert mode) <enter your unique values>, `esc :wq! enter` (to save) 
- *It is not a safe practice to put passwords or secrets in a .tfvars file
- For the sc_username & sc_password use 
  - `export TF_VAR_sc_username="yourUserName"` 
  - `export TF_VAR_sc_password="yourPassword"`
- Test your config with `terraform plan` 
- Execute your provisioning with `terraform apply` 
- A successful apply should result in the creation of a kubeconfig file in your working directory
- *BE CAREFULL with your secrets!!!  The kubeconfig, .tfvars, and terraform.tfstate file should not be commited to VCS 
  
### Known issues
- At this time the Spectro Cloud Terraform provider does not support the Apple Silicone M1 arm64 platform.    
- At this time I have expeirenced an issue using `terraform destroy` to delete a cluster.  This appears related to the fact that my cluster does not have a backup policy defined.  I have communicated this behavior to the Spectro Cloud team.  
  
### Clean up
- `terraform destroy` *see known issues above
- If you are not able to use Terraform to destroy the cluster, you can use the Palette UI
- In your Terraform working directory remove the terraform.tfstate, terraform.tfstate.backup (if present), & kubeconfig_<yourCluster>
