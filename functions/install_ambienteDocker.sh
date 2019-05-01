InstallDocker() {
	echo -n "Instalação do Docker"
  	echo

	echo -n "Adicionando o repositório"
  	sudo apt-get install \
    	apt-transport-https \
    	ca-certificates \
    	curl \
    	software-properties-common > /dev/null 2>&1
  	echo -e "[${green} Repositório adicionado com sucesso! ${NC}]\n"
  	echo

  	echo -n "Adicionando a chave!"
  	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  	echo -e "[${green} Chave Baixado com Sucesso! ${NC}]\n"

  	echo -n "Verificando chave!"
  	sudo apt-key fingerprint 0EBFCD88
  	echo -e "[${green} Chave Verificada com Sucesso! ${NC}]\n"
  	echo

  	echo -n "Verificando!"
  	sudo add-apt-repository \
   		"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   		$(lsb_release -cs) \
   		stable" > /dev/null 2>&1
   	echo -e "[${green} Docker verificado com sucesso! ${NC}]\n"
   	echo

   	echo -n "Atualizando o sistema"
	sudo apt-get update > /dev/null 2>&1
	echo -e "[${green} Atualizado com Sucesso! ${NC}]\n"
	echo
  	
  	echo -n "Instalação do Docker Compose"
  	echo
  	
  	echo -n "Atualizando os pacotes!"
  	sudo apt-get update > /dev/null 2>&1
  	echo -e "[${green} Atualizado com sucesso! ${NC}]\n"
  	echo

  	echo -n "Instalando o Docker"
  	sudo apt-get install docker-ce > /dev/null 2>&1
  	echo -e "[${green} Instalado com Sucesso! ${NC}]\n"
  	echo

  	echo -n "Adicionando o instalador!"
 	sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose > /dev/null 2>&1
 	echo -e "[${green} Adicionado com sucesso! ${NC}]\n"
 	echo

 	echo -n "Dando permissão!"
 	sudo chmod +x /usr/local/bin/docker-compose
 	echo -e "[${green} Permissão dada com Sucesso! ${NC}]\n"
 	echo

 	echo -n "Testando o docker-compose"
 	docker-compose --version
 	echo -e "[${green} Testado com Sucesso! ${NC}]\n"
 	echo

 	echo -n "Atualizando o sistema"
	sudo apt-get update > /dev/null 2>&1
	echo -e "[${green} Atualizado com Sucesso! ${NC}]\n"
	echo
}
