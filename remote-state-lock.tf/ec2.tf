#  security group creation for default vpc in us-east-1 region 
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic and all outbound traffic"

#  inboundrule for security group allowing only ssh traffic
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

#  outboundrule for security group allowing all traffic
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        Created =   "terraform"
    }
}

#  ec2 instance creation
resource "aws_instance" "db" {
    ami =   "ami-090252cbe067a9e58"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
      name =  "db"
      created =   "terraform"
      environment   =   "dev"
    }

}