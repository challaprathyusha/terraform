#  ec2 instance creation
resource "aws_instance" "db" {
    ami =   "ami-090252cbe067a9e58"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

}