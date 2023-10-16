resource "aws_instance" "app_server" {
  #Definicion del modulo de aprovicionamineto de instancia de EC2
  ami           = var.ami
  instance_type = var.machine_type
  key_name      = aws_key_pair.ssh_key.key_name
  provisioner "file" {
    source      = "${path.module}/aprov_instance.sh"
    destination = "/tmp/aprov_instance.sh"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    timeout     = "4m"
  }
  
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/aprov_instance.sh",
      "/tmp/aprov_instance.sh",
    ]
  }
  tags = {
    Name = var.tag_name
  }
}

resource "aws_key_pair" "ssh_key" {
  #Definicion de cracion de almacen de llaves ssh para conexion con instancia EC2
  key_name   = "ssh_key"
  public_key = file("~/.ssh/id_rsa.pub")
}