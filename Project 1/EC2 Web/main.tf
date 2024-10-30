#ec2 instance created

resource "aws_instance" "server1" {
    ami = "ami-06b21ccaeff8cd686"
    instance_type = "t2.micro"
    subnet_id = "var.P1-subnet"
    security_groups = "var.P1-sg"

    tags = {
        Name = "WebServer1"
    }
  
}