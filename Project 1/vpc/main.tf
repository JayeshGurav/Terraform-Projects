# We will create here VPC: 1, Subnet: 1 and Security Group: 1. 

resource "aws_vpc" "project1-vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true  

    tags = {
        Name = "project1-vpc"
    }
}

resource "aws_subnet" "P1-subnet" {
    vpc_id = aws_vpc.project1-vpc.id
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"

    tags = {
      Name = "P1-subnet1"
    }
}

resource "aws_security_group" "P1-sg" {
    vpc_id = aws_vpc.project1-vpc.id
    name = "my-sg"
    description = "Security group for 1st Project"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
       from_port =  0
       to_port = 0
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }

  
}