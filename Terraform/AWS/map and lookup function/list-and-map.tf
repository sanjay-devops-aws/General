provider "aws" {
   region     = "us-east-2"
 // region     = var.region
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "myec2" {
   ami = "ami-03d64741867e7bb94"
   instance_type = var.types["us-west-2"]
}

variable "list" {
  type = list
  default = ["t2.micro","t2.nano","t2.medium"] 
}

variable "types" {
  type = map 
  default = {
    us-east-2 = "t2.micro"
    us-west-2 = "t2.medium"
    

  }
  
}