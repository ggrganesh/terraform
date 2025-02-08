variable "instances" {
type = map
default = {
    mysql = "t2.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
}

}

variable "zone_id" {
    default = "Z05004182KHLG2294ECN"
}

variable "domain_name" {
    default = "ganeshdevops.online"
  
}
output "ec2_info" {
 value = aws_instance.this
}
  
