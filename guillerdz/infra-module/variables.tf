#--------------------------------
#     root/variables.tf
#--------------------------------
variable "instance_type" {}

variable "buckets" {
  description = "List S3 buckets names"
  type        = list(string)
}