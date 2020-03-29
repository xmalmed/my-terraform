## Configure an AWS account
  # access_key = "*****" These are define in ~/.aws/credentioals as profile 'mad-aws'
  # secret_key = "*****" Because this file is a part of Git, there should not be secrets.
provider "aws" {
  profile = "terraform"
  version = "~> 2.0"
  region  = "eu-central-1"
}

resource "aws_instance" "ec2-test" {
  ami = var.ami_id
  instance_type = "t2.micro" 
  # this is the name in aws Key pairs, not a local private .pem file name.
  key_name = "mad-aws"
  
  # provisioners are not recommended, because they do sth else than infrastructure. e.g:
  provisioner "local-exec" {
    # resources produce a lot of accessible variables about itself on creation, like aws_instance.ec2-test.public_ip
    command = "echo ${aws_instance.ec2-test.public_ip} > ip_address.txt"
  }
}

## Test of another `resource`

# Create a VPC
#resource "aws_vpc" "example" {
#  cidr_block = "10.0.0.0/16"
#}

#resource "aws_eip" "ip" {
#  vpc = true
#  instance = aws_instance.ec2-test.id
#}

