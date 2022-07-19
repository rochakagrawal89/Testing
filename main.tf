provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4NG7YDJ67S26AVPS"
  secret_key = "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"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}
