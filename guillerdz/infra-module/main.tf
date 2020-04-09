#--------------------------------
#         root/main.tf
#--------------------------------

module "storage" {
  source = "./storage"
  buckets = var.buckets
}

module "compute" {
  source = "./compute"
  instance_type = var.instance_type
}

