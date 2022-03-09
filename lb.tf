//LOAD BALANCERS
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.public-1.id, aws_subnet.public-2.id]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}