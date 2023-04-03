## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.46.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.46.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.4.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_autoscaler_policy"></a> [autoscaler\_policy](#module\_autoscaler\_policy) | terraform-aws-modules/iam/aws//modules/iam-policy | ~> 5 |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | terraform-aws-modules/iam/aws//modules/iam-eks-role | ~> 5 |

## Resources

| Name | Type |
|------|------|
| [helm_release.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/helm/2.4.1/docs/resources/release) | resource |
| [aws_autoscaling_groups.groups](https://registry.terraform.io/providers/hashicorp/aws/4.46.0/docs/data-sources/autoscaling_groups) | data source |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.46.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/4.46.0/docs/data-sources/eks_cluster_auth) | data source |
| [aws_eks_node_group.group](https://registry.terraform.io/providers/hashicorp/aws/4.46.0/docs/data-sources/eks_node_group) | data source |
| [aws_eks_node_groups.groups](https://registry.terraform.io/providers/hashicorp/aws/4.46.0/docs/data-sources/eks_node_groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region the autoscaler will be running in. | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster name. | `string` | n/a | yes |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | Docker image tag, and application version to use. Must match your Kubernetes version! | `string` | `"v1.26.2"` | no |
| <a name="input_scale_down_utilization_threshold"></a> [scale\_down\_utilization\_threshold](#input\_scale\_down\_utilization\_threshold) | The scale down node utilization threshold. | `string` | `"0.5"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | AWS Tags. | `map(string)` | n/a | yes |

## Outputs

No outputs.
