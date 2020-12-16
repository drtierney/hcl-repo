resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "david-instance"
    Env = "test"
    Client = "hcl"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

