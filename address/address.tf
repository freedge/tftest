locals {
  address_map = {
      #for address in (flatten([for endpoint in var.content: endpoint])): address.name => address
      for address in distinct(flatten([for endpoint in var.content: endpoint])): address.name => address
  }
}

resource "null_resource" "null_objects" {
  lifecycle {
    create_before_destroy = true
  }
  for_each    = local.address_map
  triggers = {
  	name        = each.key,
  }
}
