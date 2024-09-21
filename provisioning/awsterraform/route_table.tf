resource "aws_route_table" "test-route-table-pub-sub1" {

  depends_on = [
    aws_vpc.sung-vpc,
    aws_internet_gateway.sung-igw
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sung-igw.id
  }

  tags = {
    Name = "test-route-table-kuberntes"
  }


  vpc_id = "${aws_vpc.sung-vpc.id}"
}


