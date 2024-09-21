resource "aws_subnet" "test-public-subnet1" {
  availability_zone = "ap-northeast-2a"

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.0.0/20"
  enable_dns64                                   = "false"
  # enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  # map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"


  vpc_id = "${aws_vpc.sung-vpc.id}"


}
