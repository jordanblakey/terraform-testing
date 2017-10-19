
provider "aws" {
  access_key = "AKIAJW4KMRAC5AEYBXZQ"
  secret_key = "GdtxxAa80yxZysB6/DsIb6B3otf5zRtj6Om7dXvL"
}

resource "aws_instance" "example" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
}