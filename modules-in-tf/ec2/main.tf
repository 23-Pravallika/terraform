resource "aws_instance" "web" {
  ami           = data.aws_ami.ami-created-using-tf
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


