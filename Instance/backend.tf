# Declaring the remote backend; This will keep the state files in a remote s3 buckets and this will let team collaboration
terraform {
  backend "s3" {
    bucket = "tfstate-bucket"
    key    = "dev/ec2"
    region = "us-east-1"
  }
}


# terraform {
#   backend "s3" {
#     bucket = "my-terraform-state"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }

