variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id"{
  default = "ami-03265a0778a880afb"
}

variable "zone_id"{
  default = "Z02070741KHYWXX006OQ2"
}