# Data block to fetch the most recent Amazon Linux AMI
data "aws_ami" "amznlinux" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-x86_64-gp2"]
  }
  # Retrieve the most recent Amazon Linux AMI owned by Amazon
}