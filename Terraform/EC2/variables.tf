variable "ami" {
    description = "AMI ID"
    default     = "ami-096cb92bb3580c759"
}

variable "instance_type" {
    description = "Free tier EC2 Instance type"
    default     = "t2.micro"
}

variable "subnet_id" {
    default     = "null"
}

variable "sg_ids" {
    default     = "null"
}
