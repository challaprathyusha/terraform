output "ami_id" {
    value = data.aws_ami.id_ami.id
  
}

output "default_vpc" {
    value = data.aws_vpc.default_vpc.id
  
}