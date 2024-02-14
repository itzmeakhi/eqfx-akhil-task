variable "region" {
  description = "The region for the EC2 instance."
  default     = "us-east-1"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance."
}

variable "instance_type" {
  description = "The type of EC2 instance."
  default     = "t2.micro"
}

variable "instance_count" {
  description = "The number of EC2 instances to create."
  default     = 1
}

variable "instance_name" {
  description = "The name of EC2 instance create."
  default     = "myEC2instance"
}
