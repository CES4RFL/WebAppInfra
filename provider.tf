#Define la configuracion del provider, en este caso la region
#Esto es de mucha ayuda para evitar cobros al crear la instancia
#en region al azar, y hacer uso de la transferencia de informacion entre
#regiones
provider "aws" {
  region = "us-east-1"
}