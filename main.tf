provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4NG7YDJ67S26AVPS"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
