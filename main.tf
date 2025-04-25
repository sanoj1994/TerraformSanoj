resource "aws_instance" "demo" {
ami = "ami-0fdea1353c525c182"
instance_type = "t2.micro"
key_name = "javakp"
tags = {
  "Name" = "Test"
 }
}
