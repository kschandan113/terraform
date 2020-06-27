resource "aws_subnet" "public_subnet" {
  vpc_id     = "${aws_vpc.shekhar.id}"
  cidr_block = "172.16.1.0/24"
  
  tags = {
    Name = "public"
  }
}

