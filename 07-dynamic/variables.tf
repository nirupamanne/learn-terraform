variable "ingress_rules" {
    default = {
        ssh = {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
            discription = "Opening port 22 from all IP for SSH access"
        },
        mysql = {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            discription = "Opening port 3306 from all IP for SSH access"
        }
        http = {
            port = 80
            cidr_blocks = ["0.0.0.0/0"]
            discription = "Opening port 80 from all IP for SSH access"
        }
        tcp = {
            port = 8081
            cidr_blocks = ["0.0.0.0/0"]
            discription = "Opening port 8081 from all IP for custom protocol access"
        }
    }
}