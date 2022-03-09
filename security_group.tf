resource "aws_security_group" "web-sg" {
  vpc_id = aws_vpc.web-vpc.id

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

