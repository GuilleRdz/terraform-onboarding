#--------------------------------
#         compute/main.tf
#--------------------------------

data "aws_ami" "server_ami" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn-ami-hvm*-x86_64-gp2"]
  }
}

resource "aws_instance" "this" {
  ami           = data.aws_ami.server_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "TF_Intance_from_root"
  }
}