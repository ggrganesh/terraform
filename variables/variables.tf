variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}

 variable "instance_type" {
    default = "t2.micro"
  
 }

variable "ec2_tags" {
    type = map
    default = {
       Project = "expense"
       Component = "backend"
       Envirenment = "dev"
       Name = "expense-backend-dev"

    }
  
}

variable "from_port" {
    type = number
    default = 22

}

variable "to_port" {
    type = number
    default = 22

}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]

}

variable "sg_tags" {
     type = map
     default = {
     Name = "expense-backend-dev"
  
     }
}