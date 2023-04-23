resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.project.zone_id
  name    = "cv.aws-project3.cf"
  type    = "A"
  ttl     = 300
  records = [aws_instance.demo.public_ip]
}
                             