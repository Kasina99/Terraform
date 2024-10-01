resource "aws_instance" "web" {
  ami           = "ami-0e8fd5cc56e4d158c"
  instance_type = var.instance_type
  count = 3
  tags = {
    Name = var.countname[count.index]
  }
}