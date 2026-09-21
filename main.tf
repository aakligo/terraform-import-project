resource "aws_instance" "web" {

  ami = "ami-0fef201115eefe936"

  instance_type = "t3.micro"

  subnet_id = "subnet-0c9328358f2003d85"

  vpc_security_group_ids = [
    "sg-04486bea4c71a2949"
  ]
  tags = {
    Name = "terraform-import"
  }
}