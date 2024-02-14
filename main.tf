/* Resource block to create an AWS EC2 instance */
resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ami != "" ? var.ami : data.aws_ami.amznlinux.id /* Use the specified AMI ID or
                                                                    fallback to the most recent 
                                                                    Amazon Linux AMI if not specified */
  instance_type = var.instance_type

  tags = {
    Name = "${var.instance_name}-${count.index + 1}" /*Using the count.index to add dynamic tag to the ec2 instances
                                                    Adding 1 to count.index to start from 1 instead of 0 */

  }
} 