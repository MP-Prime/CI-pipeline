resource "aws_security_group" "wsg"{
    name = var.name
    description = "Control internet traffic"
    vpc_id = var.SG

    ingress{
      description = "ssh"
      from_port = 22
      to_port   = 22
      protocol = "tcp"
      cidr_blocks = [var.open]
    }

    ingress{
      description = "database"
      from_port = 3306
      to_port   = 3306
      protocol = "tcp"
      cidr_blocks = [var.open]
    }

    ingress{
      description = "jenkins"
      from_port = 8080
      to_port   = 8080
      protocol = "tcp"
      cidr_blocks = [var.CIDR]
    }

    ingress{
      description = "port"
      from_port = 80
      to_port   = 80
      protocol = "tcp"
      cidr_blocks = [var.CIDR]
    }

    egress {
      description = "Allow outbound access"
      from_port = var.outbound_port
      protocol = "-1"
      to_port = var.outbound_port
      cidr_blocks = [var.open]
    }

    tags = {
        project = "CI_Pipeline"
    }

}
