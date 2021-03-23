resource "aws_security_group" "tf_mod_sg_cloud" {
  name        = var.sg_name
  description = "tf_mod_sg_cloud"

  

    ingress {
    description = "Permite acesso ao monitoramento"
    from_port   = 8871
    to_port     = 8871
    protocol    = "tcp"
    cidr_blocks = ["192.168.5.18/32"]
    
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    
  }

  tags = {
    Name = var.sg_name
    Ambiente = var.ambiente
    Owner = "Wilson"
    City = "SP"
  }
}
