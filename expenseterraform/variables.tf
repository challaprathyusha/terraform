# variables declaration for dbinstance
variable "ami_id" {
    type =  string
    default =  "ami-090252cbe067a9e58"
}

variable "instance_names" {
    type = list(string)
    default = [ "frontend","backend","db" ]
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "common_tags" {
    type = map
    default = {
      project   = "Expenses"
      terraform = "True"
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
    type = map
    default = {
      Name = "allow_ssh"
      project   = "Expenses"
      terraform = "True"
      environment   =   "dev"
    }
  
}

# r53 variables
variable "zone_id" {
    type = string
    default = "Z10475912BY0KPKZHDXZ4"
  
}

variable "domain_name" {
    type = string
    default = "expensesnote.site"
  
}