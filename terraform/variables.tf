variable "ssh_cidr" {
  description = "Your public IP in CIDR notation (example: 1.2.3.4/32)"
  type        = string
  default     = "0.0.0.0/0"
}
