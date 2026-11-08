variable "environment" {
    default = "dev"
}

variable "project" {
    default = "roboshop"
}

variable  "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI ID of the instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of EC2"


  validation {
    # Returns true if var.environment_typement is one of the items in the list
    condition = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
    error_message= "Instance type must be one of t3.small, t3.micro, t3.medium or t3.large."
  }
}

variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z0287453XCRZMU34KKW9"
}

variable "domain_name" {
    default = "nirupadevops.online"
}