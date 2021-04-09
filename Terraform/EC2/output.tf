output "jenkins_IP" {
   value = aws_instance.jenkins_EC2.public_ip
}

output "test_IP" {
   value = aws_instance.test_EC2.public_ip
}
