output "addresses" {
  value = ["${aws_instance.appServer.*.public_ip}"]
}
/*output "zones" {
  value = ["${data.aws_availability_zones.all.names}"]
}

output "vpcID" {
  value = "${data.aws_vpc.default.id}"
}*/

output "link" {
  value = "${aws_elb.appLb.dns_name}"
}
