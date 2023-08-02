# Instance Configurations
resource "aws_instance" "TestEC2Instance" {

  ami = var.ami
  instance_type = var.instance_type   
  key_name = var.key_name
  subnet_id = var.subnet_id
  # vpc_security_group_ids = var.vpc_security_group_ids
  vpc_security_group_ids = [
  aws_security_group.ONLY_SSH.id
  ]
  
  # depends_on = [ aws_security_group.TestEC2Instance ]
  
  root_block_device {
    delete_on_termination = true
    volume_size = 8
    volume_type = "gp2"
  }

  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}

# Security group for only SSH
resource "aws_security_group" "ONLY_SSH" {
  name        = "ONLY_SSH"
  description = "Allow only SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Instance Public IP 
output "TestEC2InstancePublicIP" {
  value = aws_instance.TestEC2Instance.public_ip
}
