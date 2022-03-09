resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id = aws_subnet.public-1.id

  tags = {
      Name = "Nat 1"
  }
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id = aws_subnet.public-2.id

  tags = {
      Name = "Nat 2"
  }
}