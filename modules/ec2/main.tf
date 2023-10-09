resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.machine_type
  key_name      = aws_key_pair.ssh_key.key_name

  tags = {
    Name = var.tag_name
  }
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh_key"
  public_key = file("~/.ssh/id_rsa.pub")
}