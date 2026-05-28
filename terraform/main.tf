terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "kube_server" {
    ami = "ami-05cf1e9f73fbad2e2"
    instance_type = "t3.micro"
    key_name ="LearnKey"
    vpc_security_group_ids = ["sg-0da9ecbacc94d219b"]
    associate_public_ip_address = true
    tags = {
        Name = "kube-server"
    }
}
output "kube_server_public_ip" {
    value = aws_instance.kube_server.public_ip
}