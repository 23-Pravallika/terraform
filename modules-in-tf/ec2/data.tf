#Datasource in Terraform helps us in querying the information that is already available on Provider and this eliminates the need of hardcoding the values

# data "aws_ami" "ami-created-using-tf" {
#   most_recent = true

#   owners = ["self"]
#   tags = {
#     Name   = "app-server"
#     Tested = "true"
#   }
# }

data "aws_ami" "ami-created-using-tf" {
  most_recent      = true
  name_regex       = "Lab-ansible-ami"
  owners           = ["self"]
}
