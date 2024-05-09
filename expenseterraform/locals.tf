# The "count" object can only be used in "module", "resource", and "data" blocks, and only when the "count" argument is set.
#locals {
#   record_name   =   var.instance_names[count.index] == "frontend" ? var.domain_name:"${var.instance_names[count.index]}.${var.domain_name}"
#    record_value    =   var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip]:[aws_instance.expense[count.index].private_ip]
# }
