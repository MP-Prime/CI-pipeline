resource "aws_instance" "jenkins_EC2" {
    ami           = var.ami
    instance_type = var.instance_type
    key_name      = "second-keypair"
    subnet_id     = var.subnet_id
    vpc_security_group_ids = var.sg_ids
    associate_public_ip_address = true


 lifecycle {
    create_before_destroy = true
 }

 tags = {
    Name = "jenkins_EC2"
    project = "CI_Pipeline"
 }
}

resource "aws_instance" "test_EC2" {
    ami           = var.ami
    instance_type = var.instance_type
    key_name      = "second-keypair"
    subnet_id     = var.subnet_id
    vpc_security_group_ids = var.sg_ids
    associate_public_ip_address = true


 lifecycle {
    create_before_destroy = true
 }

 tags = {
    Name = "test_EC2"
    project = "CI_Pipeline"
 }
}
