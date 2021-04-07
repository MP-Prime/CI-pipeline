variable "vpc-cidr-block" {
    description = "CIDR block for VPC"
    default     = "10.0.0.0/16"
}

variable "subnet-cidr-block" {
    description = "CIDR block for first public subnet"
    default     = "10.0.1.0/24"
}

variable "subnet-2-cidr-block" {
    description = "CIDR block for second public subnet"
    default     = "10.0.2.0/24"
}
