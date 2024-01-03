output "instance_info"{
  value = aws_instance.web
}

output "instance_id"{
  value = aws_instance.web.id  # for ids information
}

output "public_ip"{
  value = aws_instance.web.public_ip # for public ips
}