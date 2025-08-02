provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-000ec6c25978d5999"
instance_type = "t2.micro"
key_name = "sachin"
vpc_security_group_ids = ["sg-04b9d7065bb851dd4"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
