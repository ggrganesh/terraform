resource "aws_route53_record" "this" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"  #interpolation where you can combine variable with text
  type    = "A"
  ttl     = 1
  records = [aws_instance.this[count.index].private_ip]
}

resource "aws_route53_record" "public" {
  zone_id = var.zone_id
  name    = "${var.instances[2]}.${var.domain_name}"  #interpolation where you can combine variable with text
  type    = "A"
  ttl     = 1
  records = [aws_instance.this[2].public_ip]
  allow_overwrite = true
}
