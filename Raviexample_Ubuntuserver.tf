provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

 resource "aws_instance" "instance" {
  ami              = "ami-0a91cd140a1fc148a"
  instance_type    = var.my_instance_type
  count            = 1
  associate_public_ip_address = true
   tags = {
    Name = "My-Tag"
   }

  key_name         = "Ravi-Key"
}

resource "aws_instance" "Windows_instance" {
 ami              = "ami-00d1b5cc1e5341681"
 instance_type = "t2.micro"
  count            = 1
 associate_public_ip_address = true
  tags = {
   Name = "MyWindows-Tag"
  }
 key_name         = "Ravi-Key"
}