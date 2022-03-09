resource "aws_instance" "web" {
  ami = "ami-0c6615d1e95c98aca"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-1.id

  tags = {
      Name = "web"
  }
}