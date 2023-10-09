module "ec2_instance" {
  source = "./modules/ec2"
  ami = "${var.ami}"
  machine_type = "${var.machine_type}"
} 