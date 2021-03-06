output "private_subnets" {
  value = ["${aws_subnet.mod_private.*.id}"]
}

output "public_subnets" {
  value = ["${aws_subnet.mod_public.*.id}"]
}

output "private_route_table_id" {
  value = "${aws_route_table.mod_private.*.id}"
}

output "public_route_table_id" {
  value = "${aws_route_table.mod_public.*.id}"
}
