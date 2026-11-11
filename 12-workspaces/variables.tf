
variable  "instance_type" {
  type        = map
  default = {
    dev = "t3.micro"
    prod = "t3.medium"
    uat = "t3.small"
  }
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "roboshop-workspaces-demo"
        Environment = "dev"
        Terraform = "true"
        Project = "roboshop"
    }
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "from_port" {
    type = number
    default = 0
}