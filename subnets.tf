resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_public

  tags = {
    Name = "Public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.blue-green-deploy.id
  cidr_block = var.cidr_private

  tags = {
    Name = "Private"
  }
}

