output "jenkins_IP" {
  value = module.ec2.jenkins_IP
}

output "test_IP" {
  value = module.ec2.test_IP
}

output "test_endpoint" {
  value = module.rds.test_rds_endpoint
}

output "live_endpoint" {
  value = module.rds.live_rds_endpoint
}