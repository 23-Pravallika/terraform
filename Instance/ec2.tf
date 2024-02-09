resource "aws_instance" "web" {
  ami           = "ami-029c63fec721135c4"
  instance_type = "t2.micro"
  security_groups = "sg-0705c17ba7dd211f5"

  tags = {
    Name = "terraform-server"
  }
}

# Block to print the attribute 
output "ip"{
    value=aws_instance.web.private_ip
}