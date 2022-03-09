//AUTO SCALING GROUPS
resource "aws_launch_template" "foobar" {
  name_prefix   = "foobar"
  image_id      = "ami-0c6615d1e95c98aca"
  instance_type = "t2.micro"
  }

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["ap-south-1a", "ap-south-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }
}