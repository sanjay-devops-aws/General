variable "region" {
  default = "us-west-2"
}

variable "ec2_ami" {
    type = "map"
    default = {
      us-east-2 = "ami-03d64741867e7bb94"
      us-west-2 = "ami-025102f49d03bec05"
  }
}
