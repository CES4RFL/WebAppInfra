#Archivo que contiene el valor de las variables para el ambiente de devlopment
#Define el nombre de la AMI que sera seleccionada para instalar en la instancia 
#para este caso fue seleccionado Ubuntu
ami = "ami-053b0d53c279acc90"
#Define la familia fue seleccionada la familia t3a.small  debido al requetimiento de
#instalacion de minikube 2 cores y 2 gb de ram
machine_type = "t3a.medium"