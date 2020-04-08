resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "buckets" {
  count         = length(var.buckets)
  bucket        = "${var.buckets[count.index]}-${random_id.tf_bucket_id.dec}"
  acl           = "private"
  force_destroy = "true"
}
