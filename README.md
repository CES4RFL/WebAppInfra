Para ejecutar el codigo contenido en el proyecto es necesario aprovisionar una cuenta IAM con los
permisos necesarios para la creacion de infraestructura de los siguientes servicios:

*EC2

Una vez configurada la cuenta, por favor inicializar el proyecto con el comando:

terraform init 

Este comando cargara los modulos creados de la capera modules para postiormente aplicar los cambios en la infraestructura. A continuacion dejo una lista de comandos que podrian ser de utilidad

Configuracion de nivel de volcado de traza y documento de volcado
$env:TF_LOG="DEBUG"
$env:TF_FILE_PATH="C:\Users\nousfera\Documents\LOGSTERRAFORM\info.log"

Operaciones cambios que pudieran tener todos los modulos llamados en el archivo principal
terraform plan -var-file="aplication/env/dev.tfvars"
terraform destroy -var-file="aplication/env/dev.tfvars"
terraform apply -var-file="aplication/env/dev.tfvars"

Operaciones cambios que pudieran tener un modulo en especifico que se encuentra en el archivo principal
terraform plan -var-file="aplication/env/dev.tfvars" -target=module.ec2_instance
terraform destroy -var-file="aplication/env/dev.tfvars" -target=module.ec2_instance
terraform apply -var-file="aplication/env/dev.tfvars" -target=module.ec2_instance
