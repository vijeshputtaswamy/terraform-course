module "webservers" {
  source = "git::https://github.com/cloudiac18/ultimate-terraform-course-for-devops.git//Section-05-modules/module/webservers-elb-asg?ref=v0.0.12"
  instance_type ="t2.micro"
  environment = "stage"
  cluster = "stage"
  vpc_id = "${var.vpc_id}"
  
}
resource "aws_security_group_rule" "allow_mytest" {
  type = "ingress"
  security_group_id = "${module.webservers.my_module_sg_id}"
        from_port = "10000"
        to_port = "10000"
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0"]
}
