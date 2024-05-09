locals{
    ami_id  =   "ami-090252cbe067a9e58"
    sg_id   =   "sg-0980121946812cd77"
    instance_type   =   var.instance_name == "db" ? "t3.small" : "t2.micro"
    db_tags ={
        Name = "locals"
        terraform = "true"
        project = "Expense"
    }
}