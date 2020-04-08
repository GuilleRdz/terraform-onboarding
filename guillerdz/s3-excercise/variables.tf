variable "buckets" {
  description = "List S3 buckets naming"
  type        = list(string)
  default     = ["prod-bucket", "dev-bucket"]
}

