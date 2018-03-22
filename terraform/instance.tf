resource "aws_instance" "appServer" {
  count = "${var.count}"
 
  ami = "${var.amiId}"
  instance_type = "${var.instanceType}"
#  user_data = "${template_file.app_init.rendered}"
  security_groups = ["${aws_security_group.test_sg.name}"]
  key_name = "${aws_key_pair.admin_key.key_name}"
  
  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
  }

  tags = {
    Name = "jiffleTest-app"
  }

connection {
    agent = "false"
    type = "ssh"
    user = "root"
    private_key = "${file("${var.privKey")}"
 }
  provisioner "file" {
    source = "files/epel.repo"
    destination = "/etc/yum.repos.d/epel.repo"
  }
  provisioner "remote-exec" {
    inline = [
      "yum -y upgrade kernel",
      "yum -y install docker-io",
      "chkconfig docker on",
      "mkdir -p /home/docker",
      ]
  }
  provisioner "file" {
    source = "${var.jdkrpm}"
    destination  = "/home/docker/jdk-8u161-linux-x64.rpm"
  }
  provisioner "file"  {
    source = "../Docker/"
    destination = "/home/docker/"
  }
  provisioner "remote-exec" {
    inline = [
      "service docker restart",
      "touch test.terra",
      "docker build --rm=true -t java8 /home/docker",
      "docker run --name jifflehello -d -p 80:8080 java8",
    ]
  }
}
/* resource "template_file" "app_init" {
     template = "${file("files/userdata.sh")}"
}*/

