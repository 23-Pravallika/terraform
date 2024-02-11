resource "aws_instance" "web" {
  ami           = data.aws_ami.my_ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "terraform-module"
  }
  
# Declaring the remote provisioner inside the resource
 provisioner "remote-exec" {
       connection {
          type     = "ssh"
          user     = "centos"
          password = "DevOps321"
          host     = self.private_ip
  }
    inline = [
      "ansible-pull -U https://github.com/23-Pravallika/Ansible.git robo-pull.yml -e ENV=dev -e COMPONENT=mongodb"
    ]
  }
# Declaring the remote provisioner inside the resource
  provisioner "local-exec" {
    command = "echo ${self.private_ip}"
  }
}


variable "sg" {}

output "ip"{
    value=aws_instance.web.private_ip
}


