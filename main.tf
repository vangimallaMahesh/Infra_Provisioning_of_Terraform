provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "ec2-user" {
  ami           = "ami-06fc49795bc410a0c" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Terraform server 2"
  }
}
