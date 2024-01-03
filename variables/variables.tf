variable "ami_id"{
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type"{
  default = "t2.micro"
  type = string
}

variable "tags"{
  type = map
  default = {
    Name = "Hello terraform"
    project = "Roboshop"
    environment =  "dev"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all"
}

variable "sg-description" {
  type = string
  default = "allow all port"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "cidr_blocks"{
  type = list
  default = ["0.0.0.0/0"]
}