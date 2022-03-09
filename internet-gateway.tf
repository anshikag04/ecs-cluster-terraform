resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.web-vpc.id

  tags = {
      Name = "main"
  }
}