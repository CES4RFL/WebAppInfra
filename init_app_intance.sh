#Agregar al cron tab el siguiente script
#Para editar el crontab: crontab -e
#Agregar la ruta donde se encuentre este script @reboot /path/to/script
sudo chmod 666 /var/run/docker.sock
minikube start
while true
do kubectl port-forward --address 0.0.0.0 svc/web-app-service 32449:8081
done