resource aws_launch_configuration "my-first-launch-conf" {
  name            = "webserver-launch"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.webserver_sg.id}"]
  key_name        = "terraform"
  user_data="${file("${path.module}/user_data.sh")}"
  # user_data       = <<EOF
  #   #!/bin/bash
  #   yum update -y
  #   yum install httpd -y
  #   service httpd start
  #   chkconfig httpd on
  #   echo "This is my private subnet" > /var/www/html/index.php
  #   EOF
}