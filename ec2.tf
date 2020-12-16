data "aws_ami" "image" { 
  most_recent = true 
  owners = ["137112412989"] 
  tags = { 
    Name = "amzn2-ami-hvm-2.0.20201126.0-arm64-gp2" 
  }
} 

resource "aws_instance" "myawsserver" {
  ami = data.aws_ami.image.id
  instance_type = "t2.micro"

  tags = {
    Name = "david-instance-2020"
    Env = "test"
    Client = "hcl"
    Expires = "16-12-20"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

