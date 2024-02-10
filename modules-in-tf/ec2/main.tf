resource "aws_instance" "web" {
  ami           = "ami-029c63fec721135c4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "terraform-module"
  }
}

variable "sg" {}

output "ip"{
    value=aws_instance.web.private_ip
}


