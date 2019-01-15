output "dns_name" {
  value = "${module.load_balancer.dns_name}"
}

output "target_group_arns" {
  value = ["${compact(concat(aws_alb_target_group.https_target_group.*.arn, aws_alb_target_group.http_target_group.*.arn))}"]
}

output "zone_id" {
  value = "${module.load_balancer.zone_id}"
}

output "https_listener_arn" {
  value = "${aws_alb_listener.https_listener.arn}"
}
