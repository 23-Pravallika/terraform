resource "aws_instance" "web" {
  ami           = "ami-029c63fec721135c4"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}