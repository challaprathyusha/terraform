#  ec2 instance creation
resource "aws_instance" "expense" {
    count = 3
    ami =   var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name =  var.instance_name[count.index]
        environment = "DEV"
        project = "Expense"
    }
}

#  security group creation for default vpc in us-east-1 region 
resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_desc

#  inboundrule for security group allowing only ssh traffic
    # this is block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         =  var.protocol
        cidr_blocks      =  var.cidr_range
    }

#  outboundrule for security group allowing all traffic
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = var.cidr_range
    }

    tags = var.sg_tags
}

