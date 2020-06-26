resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.shekhar.id}"

}

resource "aws_route" "private_route" {
	route_table_id  = "${aws_route_table.private_route_table.id}"
	destination_cidr_block = "0.0.0.0/0"
	nat_gateway_id = "${aws_nat_gateway.nat.id}"
}
