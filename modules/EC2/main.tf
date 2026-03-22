resource "aws_instance" "example" {
  ami = "ami-011899242bb902164"
  instance_type = var.instance_type
}