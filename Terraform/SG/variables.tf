variable "outbound_port" {
    description = "List of outbound port"
    default     = "0"
}

variable "open" {
    default     = "0.0.0.0/0"
}

variable "CIDR" {
    default     = "0.0.0.0/0"
    // change later
}

variable "SG" {
    default     = "null"
}

variable "name" {
    default     = "Security group for CI Pipeline"
}
