provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

locals {
    common_tags = {
        owner = " team-1"
        service = "engineering"
    }
}
resource "aws_instance" "instance1" {
  ami = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = local.common_tags
} 

resource "aws_ebs_volume" "ebs" {
    availability_zone = "us-east-1"
    size = 10
    tags = local.common_tags
}