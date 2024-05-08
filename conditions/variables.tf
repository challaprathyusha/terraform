
# variables declaration for dbinstance
variable "ami_id" {
    type =  string
    default =  "ami-090252cbe067a9e58"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    type = string
    default = "app"
}

