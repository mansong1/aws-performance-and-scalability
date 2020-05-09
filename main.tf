provider "aws" {
    region = var.region
    version = "~> 2.61"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "UdacityT2" {
    count = 4
    ami = ${data.aws_ami.}
    instance_type = "t2.micro"
    tags = {
        Name = "Udacity T2 - ${count.index}"
    }
}

resource "aws_instance" "UdacityM4" {
    count = 2
    ami =
    instance_type = "m4.large"
    tags = {
        Name = "Udacity M4 - ${count.index}"
    }
}