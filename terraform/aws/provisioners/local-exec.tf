provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key_var
  secret_key = var.secret_key_var
}

resource "aws_instance" "myec2-exec" {
  ami           = "ami-014d05e6b24240371"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  tags = {
    Name = "ec2-exec"
  }



  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2-exec.private_ip} >> private_ip.txt"
  }

}
