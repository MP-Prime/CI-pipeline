output "public_subnet_id" {
   value = aws_subnet.terraform-subnet.id

}

output "public_subnet_2_id" {
   value = aws_subnet.terraform-subnet-2.id

}

output "vpc_id" {
  value = aws_vpc.terraform-vpc.id
}
