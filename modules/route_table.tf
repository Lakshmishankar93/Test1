resource "aws_route_table" "public_rt"{
   vpc_id = aws_vpc.vpc.id
   route {
     cidr_block = "0.0.0.0/0"
     gateway_id = aws_internet_gateway.igw.id
   }

   tags = {
     Name = "public_rt1"
   }
}
resource "aws_route_table_association"  "public-1" {
    subnet_id = aws_subnet.pub_subnet-1.id
    route_table_id = aws_route_table.public_rt.id
}
