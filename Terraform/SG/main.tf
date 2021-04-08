resource "aws_security_group" "EC2-wsg"{
  vpc_id = var.vpc
    ingress{
      description = "jenkins"
      from_port = 8080
      to_port   = 8080
      protocol = "tcp"
      cidr_blocks = [var.open]
    }

    ingress{
      description = "ssh"
      from_port = 22
      to_port   = 22
      protocol = "tcp"
      cidr_blocks = [var.open]
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

resource "aws_security_group" "db-wsg"{
  vpc_id = var.vpc
    ingress{
      description = "database"
      from_port = 3306
      to_port   = 3306
      protocol = "tcp"
      security_groups = [aws_security_group.EC2-wsg.id]
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