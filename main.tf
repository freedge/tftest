locals {
  objects = jsondecode(file("le.json"))
}

module "addresses" {
  source        = "./address"
  content = local.objects
}

