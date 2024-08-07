resource "aws_security_group" "allow_diffports" {
  name        = "allow_differentports"
  description = "Allow 22,80,443,3306,8080 ports in inbound traffic and all ports in outbound traffic"

#  dynamic block
   dynamic ingress {
        for_each = var.inbound_rules
        content {
            from_port        = ingress.value["port"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["allowed_cidr"]
        }
    }

#  outboundrule for security group allowing all traffic
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_diffports"
        Created =   "terraform"
    }
}