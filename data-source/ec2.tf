resource "aws_instance" "instance" {
    ami = data.aws_ami.id_ami.id
    vpc_security_group_ids = [ "sg-0980121946812cd77" ]
    instance_type = "t2.micro"
    tags = {
         Name = "data-source-practice"
    }
  
}