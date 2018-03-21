# Creates a security group on default vpc. So there is no need to specify the vpc id here.
#Incase of seperate/custom vpc, remove the # from vpc_id field and update the correct resource attributes. 

resource "aws_security_group" "test_sg"  {
  name = "jiffleTest"
  description = "For testing jiffle App"
#  vpc_id = "${aws_vpc.test_vpc.id}"

#Adding inbound rule for port 22, 80 and 8080

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }
  egress {
     from_port = 0
    to_port   = 0
    protocol  = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

