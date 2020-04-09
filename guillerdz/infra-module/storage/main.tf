#--------------------------------
#        storage/main.tf
#--------------------------------

resource "random_id" "tf_bucket_id" {
  count       = length(var.buckets)
  byte_length = 2
}

resource "aws_s3_bucket" "buckets" {
  count         = length(var.buckets)
  bucket        = "${var.buckets[count.index]}-${random_id.tf_bucket_id[count.index].dec}"
  acl           = "private"
  force_destroy = "true"
}
