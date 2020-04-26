resource "aws_route53_record" "elb-endpoint" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "${var.environment}-chat.myterraform.com"
  type    = "CNAME"
  ttl     = "300"
  records = [ aws_elb.my_first_elb.dns_name ]
}
