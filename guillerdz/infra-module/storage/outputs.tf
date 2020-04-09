#--------------------------------
#       storage/outputs.tf
#--------------------------------

output "bucket_first_name" {
  value = element(aws_s3_bucket.buckets,0).bucket
}

output "bucket_second_name" {
  value = aws_s3_bucket.buckets[1].bucket
}

output "buckets" {
  value = aws_s3_bucket.buckets.*.bucket
}