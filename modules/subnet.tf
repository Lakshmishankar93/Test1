resource "aws_subnet" "pub_subnet-1"{
    vpc_id =  aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-west-2"
    tags = {
      Name = "pub_sn1" 
  }
}
resource "aws_subnet" "priv_subnet-1"{
    vpc_id =  aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-west-2"
    tags = {
      Name = "priv_sn2" 
  }
}
