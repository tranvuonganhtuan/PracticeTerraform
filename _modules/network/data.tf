data "aws_subnet" "private" {
  filter {
    name   = var.vpc_name
    values = [aws_vpc.tuantranvpc.id]
  }
  tags = {
    Name = "${var.vpc_name}-private-subnet"
  }
}

data "aws_subnet" "public" {
  filter {
    name   = var.vpc_name
    values = [aws_vpc.tuantranvpc.id]
  }
  tags = {
    Name = "${var.vpc_name}-public-subnet"
  }
}