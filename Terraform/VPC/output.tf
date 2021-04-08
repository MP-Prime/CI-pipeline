output "public_subnet_id" {
   value = aws_subnet.ci-subnet.id

}

output "public_subnet_2_id" {
   value = aws_subnet.ci-subnet-2.id

}

output "vpc_id" {
  value = aws_vpc.ci-vpc.id
}
