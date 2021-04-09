output "live_rds_endpoint" {
   value = aws_db_instance.live_rds.endpoint
}

output "test_rds_endpoint" {
   value = aws_db_instance.test_rds.endpoint
}