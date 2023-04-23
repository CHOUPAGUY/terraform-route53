variable "region_name" {
  type    = string
  default = "us-east-1"
}
variable "instance_type" {
  description = "This is the instance"
  type        = string
  default     = "t2.micro"

}

variable "env" {
    type = string
    default = "dev"
  
}

variable "name" {
    type = string
    default = "dev-jenkins-server"
  
}
// vpc variables

variable "vpc_name" {
    type = string
    default = "route vpc"
  
}
