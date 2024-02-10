## Creates Security Group 
resource "aws_security_group" "allow-all-ssh" {
 name        = "allow-all-ssh"
 description = "allow ssh"
 
ingress {
   description = "SSH"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }

egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }

tags = {
    Name = "allow-all-ssh"
  }
}


output "sg_id"{
    value=aws_security_group.allow-all-ssh.id
}

output "sg_desc"{
    value=aws_security_group.allow-all-ssh.description
}
