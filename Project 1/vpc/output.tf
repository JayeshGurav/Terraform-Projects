output "sn" {
    value = aws_subnet.P1-subnet.id
  
}

output "sg" {
  value = aws_security_group.P1-sg.id
}