# This creates an LB, all servers launched using appServer will be added to this. Will forward to port 80 on instances. 
# SSL configs will be included in the next commit. 

resource "aws_elb" "appLb" {
  name = "jiffle-LB"

  security_groups = ["${aws_security_group.test_sg.id}"]
  instances       = ["${aws_instance.appServer.*.id}"]
  availability_zones = ["${data.aws_availability_zones.all.names}"]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }
}
