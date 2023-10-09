#Realiza la descarga del binario de minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
#realiza la instalacion del binario minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube
#realiza la instalacion de docker mediante el administados de paquetes de ubuntu
sudo apt-get update && sudo apt-get install docker.io -y
#cambio de permisos para inicializacion de docker sin permisos de super usuario
sudo chmod 666 /var/run/docker.sock
#realiza la descarga binario de la herramienta del plano de aministracion de kubernetes
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#realiza la instalacion del bintario
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
#inicializa la herramienta kubectl
minikube start
#Comando necesario para utilizar imagenes del repositorio local de docker
eval $(minikube -p minikube docker-env) 