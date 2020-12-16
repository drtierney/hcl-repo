data "aws_ami" "image" { 

  most_recent = true 

  owners = ["self"] 

  tags = { 

    Name = "webserver-image-dec-20" 

  } 

} 

resource "aws_instance" "myawsserver" {
  ami = data.aws_ami.image.id
  instance_type = "t2.micro"

  tags = {
    Name = "david-instance-2020"
    Env = "test"
    Client = "hcl"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

