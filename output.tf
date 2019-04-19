locals {
  vpc_ids = "${aws_vpc.cluster_vpc.*.id}"
}

output "vpc_id" {
  value = "${length(local.vpc_ids) == 0 ? "" : element(concat(local.vpc_ids, list("")), 0)}"
}

output "public_subnet_1a" {
  value = "${aws_subnet.public_subnet_ap-northeast-1a.*.id}"
}

output "public_subnet_1b" {
  value = "${aws_subnet.public_subnet_ap-northeast-1b.*.id}"
}
