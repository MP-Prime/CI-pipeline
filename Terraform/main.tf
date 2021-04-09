provider "aws" {
    region                  = "eu-west-2"
    shared_credentials_file = "~/.aws/credentials"
}

module "vpc"{
    source = "./VPC"
}

module "sg"{
    source = "./SG"
    name = "WebServerSG"
    vpc = module.vpc.vpc_id
}


module "ec2"{
    source = "./EC2"
    subnet_id = module.vpc.public_subnet_id
    sg_ids = [module.sg.EC2_wsg_id]
}

module "rds"{
    username = var.username
    password = var.password
    source = "./RDS"
    subnet_id = module.vpc.public_subnet_id
    subnet_2_id = module.vpc.public_subnet_2_id
    sg_ids = [module.sg.RDS_wsg_id]
}