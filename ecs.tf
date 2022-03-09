resource "aws_ecs_cluster" "ecs_cluster" {
    name  = "my-cluster"
}

resource "aws_ecs_task_definition" "main" {
  family = "hello-world-app"
  network_mode = "awsvpc"
  cpu = 1024
  memory = 2048
  container_definitions = <<DEFINITION
  [
      {
         "image":"heroku/nodejs-hello-world",
         "cpu" : 1024,
         "memory" :2048,
         "name": "hello-world-app",
         "networkMode" : "awsvpc",
         "portMapping": [
             {
                "containerPort":3000,
                "hostPort":3000
             }
         ]
      }

    ]
     DEFINITION
}


resource "aws_ecs_service" "worker" {
  name            = "worker"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.main.arn
  desired_count   = 2
  network_configuration {
    subnets          = aws_subnet.private-1.*.id
    assign_public_ip = false
    security_groups = [
      aws_security_group.web-sg.id
    ]
  }
}

