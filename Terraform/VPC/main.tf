data "aws_availability_zones" "available"{
    state = "available"
}
resource "aws_vpc" "ci-vpc" {
    cidr_block = var.vpc-cidr-block
    instance_tenancy = "default"
    tags = {
        project = "CI_Pipeline"
    }
}

resource "aws_subnet" "ci-subnet" {
    vpc_id = aws_vpc.ci-vpc.id
    cidr_block = var.subnet-cidr-block
    map_public_ip_on_launch = "true"
    availability_zone = data.aws_availability_zones.available.names[0]
    tags = {
        project = "CI_Pipeline"
    }
}

resource "aws_subnet" "ci-subnet-2" {
    vpc_id = aws_vpc.ci-vpc.id
    cidr_block = var.subnet-2-cidr-block
    map_public_ip_on_launch = "true"
    availability_zone = data.aws_availability_zones.available.names[1]
    tags = {
        project = "CI_Pipeline"
    }
}

resource "aws_internet_gateway" "ci-igw" {
    vpc_id = aws_vpc.ci-vpc.id
    tags = {
        project = "CI_Pipeline"
    }
}

resource "aws_route_table" "ci-route" {
    vpc_id = aws_vpc.ci-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ci-igw.id
    }

    tags = {
        project = "CI_Pipeline"
    }
}

resource "aws_route_table_association" "ci-route-assoc" {
    subnet_id = aws_subnet.ci-subnet.id
    route_table_id = aws_route_table.ci-route.id
}

resource "aws_route_table_association" "ci-route-assoc2" {
    subnet_id = aws_subnet.ci-subnet-2.id
    route_table_id = aws_route_table.ci-route.id
}