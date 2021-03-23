resource "aws_security_group" "tf_mod_sg" {
  name        = var.sg_name
  description = "tf_mod_sg"

  

    ingress {
    description = "Permite acesso ao monitoramento"
    from_port   = 8870
    to_port     = 8870
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
