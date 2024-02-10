resource "aws_instance" "web" {
  ami           = "ami-029c63fec721135c4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "terraform-module"
  }
}

variable "sg_id" {}

output "ip"{
    value=aws_instance.web.private_ip
}

