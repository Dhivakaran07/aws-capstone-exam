variable "key_name" {
  description = "EC2 Key pair name for SSH"
  type        = string
}

variable "ssh_cidr" {
  description = "Your public IP in CIDR notation (example: 1.2.3.4/32)"
  type        = string
}
