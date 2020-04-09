#--------------------------------
#         root/outputs.tf
#--------------------------------

//Storage outputs
output "bucket_first_name" {
  value = module.storage.bucket_first_name
}

output "bucket_second_name" {
  value = module.storage.bucket_second_name
}

output "buckets" {
  value = module.storage.buckets
}

//Compute outputs
output "instance_ip_addr" {
  value = module.compute.instance_ip_addr
}
