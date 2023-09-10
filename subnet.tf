resource "aws_subnet" "zoneAPublicSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "zoneAPublicSubnet"
  }
}
resource "aws_subnet" "zoneAPrivateSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "zoneAPrivateSubnet"
  }
}
resource "aws_subnet" "zoneBPublicSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "zoneBPublicSubnet"
  }
}
resource "aws_subnet" "zoneBPrivateSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "zoneBPrivateSubnet"
  }
}