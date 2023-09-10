resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.gw.id
  }
tags = {
    Name = "PublicRT"
  }
}