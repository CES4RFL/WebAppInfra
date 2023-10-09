#Contiene la llamada a los modulos que se aprovicionan necesarios para la 
#creacion de la infraestructura
module "ec2_instance" {
  source = "./modules/ec2"
  ami = "${var.ami}"
  machine_type = "${var.machine_type}"
} 