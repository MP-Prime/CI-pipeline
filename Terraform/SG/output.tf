output "EC2_wsg_id"{
   value = aws_security_group.EC2-wsg.id
}

output "RDS_wsg_id"{
   value = aws_security_group.db-wsg.id
}
