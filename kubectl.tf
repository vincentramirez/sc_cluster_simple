locals {
  cluster_kubeconfig = spectrocloud_cluster_aws.cluster.kubeconfig
}
resource "local_file" "kubeconfig" {
  content              = local.cluster_kubeconfig
  filename             = "kubeconfig_${var.cluster_name}"
  file_permission      = "0644"
  directory_permission = "0755"
}
