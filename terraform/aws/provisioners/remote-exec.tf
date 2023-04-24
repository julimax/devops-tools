provider "aws" {
  region     = "us-west-1"
  access_key = var.access_key_var
  secret_key = var.secret_key_var
}

resource "aws_instance" "myec2-exec" {
  ami           = "ami-014d05e6b24240371"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  tags = {
    Name = "ec2-exec"
  }
  
  vpc_security_group_ids = [
    "sg-0fd7be0fe438032ff" 
  ]

  connection {
  type = "ssh"
  user = "ubuntu"
  private_key = file("./terraform-key.pem")
  host = self.public_ip
  }

  provisioner "remote-exec" {
    # when = destroy /destroy provisioners are run before the resource is detroyed
    # if a creation-time provisioner fails, the resource is marked as tainted
    # on_failure = continue 
    # if a creation-time provisioner fails, the resource isn't marked as tainted
    inline = [
      "sudo apt install -y mysql-server",
    ]
  }

}

