# variables declaration for dbinstance
variable "ami_id" {
    type =  string
    default =  "ami-090252cbe067a9e58"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "db_tags" {
    type = map(string)
    default = {
      name =  "db"
      created =   "terraform"
      environment   =   "dev"
    }
}

# variables declaration for security group
variable "sg_name" {
    type =  string
    default = "allow_ssh"
  
}

variable "sg_desc" {
    type = string
    default = "Allow ssh inbound traffic and all outbound traffic"
  
}

variable "ssh_port" {
    type = number
    default = 22
  
}

variable "protocol" {
    type = string
    default = "tcp"
  
}

variable "cidr_range" {
    type =  list(string)
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {
    type = map(string)
    default = {
      Name = "allow_ssh"
      Created =   "terraform"
    }
  
}