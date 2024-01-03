#create instances and update route 53 records

# ec2 resources

resource "aws_instance" "web" {
  #count = 11
  count = length(var.instance_names) # length function
  ami         = var.ami_id
  instance_type = local.instance_type
  #var.instance_name == "mongodb" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {

  Name =  var.instance_names[count.index]

  }
}

resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.bhaskar75.online"
  type    = "A"
  ttl     = 1
  records = [local.ip]
}