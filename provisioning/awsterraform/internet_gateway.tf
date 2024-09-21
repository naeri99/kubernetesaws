resource "aws_internet_gateway" "sung-igw" {
  tags = {
    Name = "second-internet"
  }

  vpc_id = "${aws_vpc.sung-vpc.id}"

  depends_on = [
    aws_vpc.sung-vpc,
  ]
}
