mock_provider "aws" {
  mock_data "aws_iam_policy_document" {
    defaults = {
      json = "{\"Version\":\"2012-10-17\",\"Statement\":[]}"
    }
  }
  mock_data "aws_eks_cluster" {
    defaults = {
      endpoint = "https://example.eks.amazonaws.com"
      identity = [{ oidc = [{ issuer = "https://oidc.eks.eu-central-1.amazonaws.com/id/EXAMPLE" }] }]
      certificate_authority = [{ data = "dGVzdA==" }]
    }
  }
}
mock_provider "helm" {}

run "plan" {
  command = plan
  variables {
    cluster_name = "my-cluster"
    aws_region   = "eu-central-1"
    tags = {
      Environment = "test"
    }
  }
}
