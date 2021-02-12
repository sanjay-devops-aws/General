provider "aws" {
   region     = "us-east-2"
 // region     = var.region
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "myec2" {
   ami = "ami-03d64741867e7bb94"
   instance_type = "t2.micro"
   count = 5
}   