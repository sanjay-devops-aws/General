provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  
}

resource "aws_s3_bucket" "sanjayfristbucket12345" {
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}