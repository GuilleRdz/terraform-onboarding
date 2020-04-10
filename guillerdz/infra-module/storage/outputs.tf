#--------------------------------
#       storage/outputs.tf
#--------------------------------

output "bucket_first_name" {
  value = aws_s3_bucket.buckets.*.bucket[0]
}

output "bucket_second_name" {
  value = aws_s3_bucket.buckets.*.bucket[1]

}

output "buckets" {
  value = aws_s3_bucket.buckets.*.bucket
}