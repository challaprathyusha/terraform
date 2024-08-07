resource "aws_instance" "instance" {
    ami = data.aws_ami.id_ami.id
    vpc_security_group_ids = [ "sg-04d73a14b382d203a" ]
    instance_type = "t2.micro"
    tags = {
         Name = "ansible"
    }
  
}