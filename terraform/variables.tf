variable "aws_region" {
  type    = string
  default = "ca-central-1"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "ankit" {
  description = "Key pair for EC2 SSH"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0abac8735a38475db" # Ubuntu 22.04 in ca-central-1
}
