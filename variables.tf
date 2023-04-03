variable "cluster_name" {
  type        = string
  description = "EKS Cluster name."
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags."
}

variable "aws_region" {
  type        = string
  description = "The AWS region the autoscaler will be running in."
}

variable "scale_down_utilization_threshold" {
  type        = string
  default     = "0.5"
  description = "The scale down node utilization threshold."
}

variable "image_tag" {
  type        = string
  default     = "v1.23.0"
  description = "Docker image tag, and application version to use. Must match your Kubernetes version!"
}
