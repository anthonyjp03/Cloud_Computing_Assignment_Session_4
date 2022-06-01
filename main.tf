provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket   = "terraform-backend-cc2022_assignment"
    key      = "terraform-state.state"
  }
}

resource "aws_instance" "assingment" {
  ami = "ami-08d70e59c07c6a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}