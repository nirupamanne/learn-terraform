resource "aws_instance" "state_demo" {
  instance_type = var.instance_type
  ami = data.aws_ami.joindevops.id
  vpc_security_group_ids = [aws_security_group.state_demo.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "state_demo" {
  name        = "roboshop-state-demo-1"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = var.from_port
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = var.cidr
  }
  
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-state-demo"
  }

  lifecycle {
    create_before_destroy = true
  }
}