variable  "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI ID of the instance"
}

variable  "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of EC2"
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

# variable "ec2_tags" {
#   default = {
#     Name = "roboshop-dev"
#   }
# }

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "from_port" {
    type = number
    default = 0
}