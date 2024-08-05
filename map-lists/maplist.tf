provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "instance1" {
  ami = "ami-0fc5d935ebf8bc3bc"
  instance_type = var.list[1]
}

variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.micro"]
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        us-souteast-1 = "t2.small"
    }
}