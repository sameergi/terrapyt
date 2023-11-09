# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "myec2"{
 ami = "ami-0a7cf821b91bcccbc"
 instance_type = "t2.micro"
 count = 1
 key_name = "sam"
 vpc_security_group_ids = ["${aws_security_group.demosgid.id}"]
 subnet_id = aws_subnet.demosubnetid.id
 associate_public_ip_address = true
 user_data = "${file("data.sh")}"
tags = {
 Name = "myec2"
}
}
