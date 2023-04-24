provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key_var
  secret_key = var.secret_key_var
}

variable "istest" {
  default = true
}

resource "aws_iam_user" "users" {
    name = "empleados.${count.index}"
    count = var.istest == true ? 3 : 0
}
