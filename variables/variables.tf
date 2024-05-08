#variables prefernce
# 1 commandline(-var or -var-file)
# 2 *.auto.tfvars or *.auto.tfvars.json
# 3 *.tfvars.json
# 4 *.tfvars 
# 5 Environment variables
# 6 Variable default value

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
      Name =  "db"
      project   = "Expenses"
      createdby =   "terraform"
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
      project   = "Expenses"
      createdby =   "terraform"
      environment   =   "dev"
    }
  
}