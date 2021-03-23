resource "aws_security_group" "sg_module_1" {
  name        = var.sg_name
  description = "sg_name"

  

    ingress {
    description = "Permite acesso ao monitoramento"
    from_port   = 8892
    to_port     = 8892
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
