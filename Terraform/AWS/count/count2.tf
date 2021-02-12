provider "aws" {
   region     = "us-east-2"
 // region     = var.region
   access_key = "AKIAWZNK45EKLVRWNKGA"
   secret_key = "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"
}

resource "aws_iam_user" "ib" {
  name = "loadbalancer.${count.index}"
  count = 5
  path  = "/system/"
}