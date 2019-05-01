InstallEditores() {
	clear
	echo "==========================================="
	echo "Editores de Texto e/ou IDE's de programação"
	echo "==========================================="
	echo
	echo "1. Editor de Texto Sublime"
	echo "2. Editor Vi"
	echo "3. Editor Vim"
	echo "4. Editor VsCode"
	echo "5. Voltar ao menu principal"
	echo
	read op

	case $op in
		1)
			echo -n "Adicionando o repositório do sublime!"
			echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
			echo -e "[${green} Repositório adicionado com Sucesso! ${NC}]\n"

			echo -n "Baixando a chave do repositório"
			wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
			echo -e "[${green} Chave Baixado com Sucesso! ${NC}]\n"

			echo -n "Atualizando os pacotes!"
			sudo apt-get update > /dev/null 2>&1
			echo -e "[${green} Atualizado com sucesso! ${NC}]\n"

			echo -n "Instalando o Sublime text!"
			sudo apt-get install sublime-text > /dev/null 2>&1
			echo -e "[${green} Sublime instalado com sucesso! ${NC}]\n"
			sleep 5 ;;
		2)
			echo -n "Instalando o editor Vi!"
			sudo apt-get install vi > /dev/null 2>&1
			echo -e "[${green} Editor Vi instalado com sucesso! ${NC}]\n"
			sleep 5 ;;
		3)
			echo -n "Instalando o editor Vim!"
			sudo apt-get install vim > /dev/null 2>&1
			echo -e "[${green} Editor Vim instalado com sucesso! ${NC}]\n"
			sleep 5 ;;
		4)
			echo -n "Deletando o vscode anterior!"
			sudo rm -Rf /opt/vscode/* > /dev/null 2>&1
			sudo rm -Rf /opt/vscode/code > /dev/null 2>&1
			sudo rm -Rf /usr/share/applications/vscode.desktop > /dev/null 2>&1
			echo -e "[${green} Versão anterior deletado com sucesso! ${NC}]\n"
			echo

			echo -n "Verificando a arquitetura do linux e instalando o vscode dependendo da arquitetura!"
			if [ $(uname -m) = "x86_64" ]; then
				echo -n "Baixando a versão compactada do vscode! - 64 bit"
				wget "https://go.microsoft.com/fwlink/?LinkID=620884" -O vscode.tar.gz
				echo
			else
				echo -n "Baixando a versão compactada do vscode! - 32 bit"
			    wget "https://go.microsoft.com/fwlink/?LinkID=620885" -O vscode.tar.gz
			   	echo
			fi
			
			echo -n "Descompactando o arquivo baixado!"
			sudo tar -vzxf vscode.tar.gz -C /opt/ > /dev/null 2>&1
			echo -e "[${green} Arquivo descompactado com sucesso! ${NC}]\n"
			echo

			echo -n "Renomeando o arquivo baixado"
			sudo mv /opt/VSCode*/ /opt/vscode/ > /dev/null 2>&1
			echo -e "[${green} Arquivo renomeado com sucesso! ${NC}]\n"
			echo

			echo -n "Criando um atalho para facilitar a execução do comando!"
			sudo ln -sf /opt/vscode/code /usr/bin/code > /dev/null 2>&1
			echo -e "[${green} Atalho criado com sucesso! ${NC}]\n"
			echo

			echo -n "Criando um lançador para o vscode!"
			echo -e '[Desktop Entry]\n Version=1.0\n Name=vscode\n Exec=/opt/vscode/code\n Icon=/opt/vscode/resources/app/resources/linux/code.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/vscode.desktop > /dev/null 2>&1
			echo -e "[${green} VsCode instalado com sucesso! ${NC}]\n"
			echo
			
			echo -n "Atualizando o sistema operacional"
			sudo apt-get update > /dev/null 2>&1
			echo -e "[${green} Sistema operacional atualizado com sucesso! ${NC}]\n"
			echo

			# echo -n "Instalando o editor vscode!"
			# sudo apt-get install > /dev/null 2>&1
			# echo -e "[${green} Editor vscode instalado com sucesso! ${NC}]\n"
			sleep 5 ;;
		5)
			Principal
			sleep 5 ;;
	esac
}
