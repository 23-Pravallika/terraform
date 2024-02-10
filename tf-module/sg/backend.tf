# Declaring provider information

# Always start with declaring provider information first 

provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "buck-tf-state"
    key    = "modules/tf/terraform.tfstate"
    region = "us-east-1"
  }
}

