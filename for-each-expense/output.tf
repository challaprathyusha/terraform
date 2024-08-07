output "aws_instance_info" {
    value = aws_instance.expense
}

output "ami_id_info" {
    value = data.aws_ami.ami_info.id
  
}

output "zone_id" {
    value = data.aws_route53_zone.zone_id.id
  
}

