resource "aws_instance" "locals_demo" {
  instance_type = local.instance_type
  ami = var.ami_id
  vpc_security_group_ids = [aws_security_group.locals_demo.id]

  tags = local.ec2_tags
}

resource "aws_security_group" "locals_demo" {
  name        = "roboshop-locals-demo"
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
    Name = "roboshop-locals-demo"
  }
}
}