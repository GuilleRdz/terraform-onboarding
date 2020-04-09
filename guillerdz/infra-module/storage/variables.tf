#--------------------------------
#      storage/variables.tf
#--------------------------------

variable "buckets" {
  description = "List S3 buckets names"
  type        = list(string)
  default     = ["prod-bucket", "dev-bucket"]
}

