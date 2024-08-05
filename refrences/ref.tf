provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
}

resource "aws_eip" "myeip" {
  vpc = true
}

resource "aws_eip_association" "my_eip_assoc" {
  instance_id = aws_instance.ec2.id
  allocation_id = aws_eip.myeip.id

}