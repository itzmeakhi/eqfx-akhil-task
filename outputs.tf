output "ec2_instance_info" {
  value = zipmap(
    aws_instance.ec2_instance[*].id,
    aws_instance.ec2_instance[*].public_ip
  )
}