data "aws_ami" "image" { 
  most_recent = true 
  owners = ["679593333241"] 
  tags = { 
    Name = "CentOS Linux 7 x86_64 HVM EBS ENA 2002_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-0042af67f8e4dcc20.4" 
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

