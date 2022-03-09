
resource "aws_subnet" "public-1" {
  vpc_id = aws_vpc.web-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-south-1a"

  tags = {
      Name = "public-1"
  }
}
resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.web-vpc.id
  cidr_block = "10.0.64.0/24"
  availability_zone = "ap-south-1b"

  tags = {
      Name = "public-2"
  }
}
resource "aws_subnet" "private-1" {
  vpc_id = aws_vpc.web-vpc.id
  cidr_block = "10.0.128.0/24"
  availability_zone = "ap-south-1a"

  tags = {
      Name = "private-1"
  }
}
resource "aws_subnet" "private-2" {
  vpc_id = aws_vpc.web-vpc.id
  cidr_block = "10.0.192.0/24"
  availability_zone = "ap-south-1b"

  tags = {
      Name = "private-2"
  }
}
