resource "aws_instance" "app_server" {
  #Definicion del modulo de aprovicionamineto de instancia de EC2
  ami           = var.ami
  instance_type = var.machine_type
  key_name      = aws_key_pair.ssh_key.key_name

  tags = {
    Name = var.tag_name
  }
}

resource "aws_key_pair" "ssh_key" {
  #Definicion de cracion de almacen de llaves ssh para conexion con instancia EC2
  key_name   = "ssh_key"
  public_key = file("~/.ssh/id_rsa.pub")
}