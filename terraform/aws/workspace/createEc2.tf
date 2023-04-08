provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key_var
  secret_key = var.secret_key_var
}

resource "aws_instance" "myec2" {
  ami           = "ami-014d05e6b24240371"
  instance_type = "t2.micro"
  tags = {
    Name = lookup(var.workspace_type, terraform.workspace)
  }
}

variable "workspace_type" {
  type = map(string)
  default = {
    default = "default"
    dev = "dev"
    test = "test"
  }
}
