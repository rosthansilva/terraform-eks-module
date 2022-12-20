resource "aws_eip" "main" {
  vpc = true

  tags = var.tags
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.main]
}