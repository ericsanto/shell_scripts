#!/bin/bash

#Escreva um script que verifique se um determinado serviço (por exemplo, nginx) está em execução. 
#Se não estiver, o script deve iniciar o serviço e registrar a data e a hora dessa ação em u
#m arquivo de log chamado service_restart.log

service="nginx"
condition=$(systemctl is-active $service)

if [[ "$condition" != "active" ]]; then
	echo "Service not running"
	echo "Initializing service $service"
	systemctl start $service
	date >> "$service-restart.log"
else
	echo "Service $service running"

fi

	
