# -------------------------
# Instalando o Ambiente PHP
# -------------------------

InstallAmbientePHP() {
	echo -n "Instalando o ambiente PHP!"
	echo

	echo -n "Instalando o MySQL!"
	sudo apt-get install mysql-server > /dev/null 2>&1
	echo

	echo -n "Testando o MySQL!"
	echo
	mysql --version
	echo
	sleep 5

	echo -n "Instando o PHP e suas dependências!"
	sudo apt-get -yqq install php7.1 php7.1-cli php7.1-mysql php7.1-curl php7.1-mbstring php7.1-gd php7.1-json php7.1-xml php7.1-openssl php7.1-mcrypt
	echo

	echo -n "Testando o git!"
	echo
	php -v
	echo
	sleep 5	
	
	echo -n "Instalando o git!"
	sudo apt-get install git
	echo

	echo -n "Testando o git!"
	echo
	git --version
	echo
	sleep 5

	echo -n "Configurando o git!"
	echo

	echo -n "informe o nome de usuário do git:"
	read nome
	git config --global user.name "$nome"
	echo

	echo -n "Informe o email para configurar o git:"
	read email
	git config --global user.email "$email"
	echo

	echo -n "Instalando o composer!"
	sudo apt-get install composer > /dev/null 2>&1
	echo
	
	echo -n "Testando o composer!"
	echo
	composer --version
	echo
	sleep 5

	echo -n "Atualizando o sistema"
	sudo apt-get update > /dev/null 2>&1
	echo
	echo -e "[${green} Ambiente PHP instalado com sucesso!${NC}]\n"
}
