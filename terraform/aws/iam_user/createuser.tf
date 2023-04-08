provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key_var
  secret_key = var.secret_key_var
}

resource "aws_iam_user" "user1" {
    name = var.username
}

variable "devs" {
  type = list
  default = ["dev_junior", "dev_senior", "dev_semisenior"]
}

resource "aws_iam_user" "admin" {
    name = "admin.${count.index}"
    count = 3
}

resource "aws_iam_user" "devs" {
    name = var.devs[count.index]
    count = 3
}
