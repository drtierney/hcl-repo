data "aws_ami" "image" { 

  most_recent = true 

  owners = ["137112412989"] 

  tags = { 

    Name = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-20201026" 

  } 

} 

resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
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

