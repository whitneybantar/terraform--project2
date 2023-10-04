## Ec2 instance 

resource "aws_instance" "ec2-demo" {
    ami = "ami-03a6eaae9938c858c"
    vpc_security_group_ids = [aws_security_group.sg-demo.id]
    instance_type = "t2.micro"
    key_name = "ec2-demo"
    subnet_id = aws_subnet.public_subnet1.id
    user_data =  file("setup.sh")
  
    tags={
        Name = "Terraform instance"
        env = "Dev"
    }

}
