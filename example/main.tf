module "eks_cluster_autoscaler" {
  source  = "blackbird-cloud/eks-cluster-autoscaler/aws"
  version = "~> 1"

  cluster_name = "my-cluster"
  aws_region   = "eu-central-1"
  tags = {
    Environment = "production"
  }
}
