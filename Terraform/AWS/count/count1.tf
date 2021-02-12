provider "aws" {
   region     = "us-east-2"
 // region     = var.region
   access_key = "AKIAWZNK45EKLVRWNKGA"
   secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-03d64741867e7bb94"
   instance_type = "t2.micro"
   count = 5
}   

resource "aws_iam_user" "ib" {
  name = "loadbalancer"
  count = 5
  path  = "/system/"

}