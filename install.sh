#!/bin/bash

# Bash Colors
red='\033[0;31m'
green='\033[0;32m'
NC='\033[0m' # Sem cor

# Salvando o diretório atual
PWD=$(pwd);

# Carregando as funções
source $PWD/functions/install_basics.sh
source $PWD/functions/List_users.sh
source $PWD/functions/add_users.sh
source $PWD/functions/add_group.sh
source $PWD/functions/add_usergroup.sh
source $PWD/functions/del_group.sh
source $PWD/functions/del_users.sh
source $PWD/functions/permission_paste.sh
source $PWD/functions/install_ambientePHP.sh
source $PWD/functions/install_ambienteDocker.sh
source $PWD/functions/install_editores.sh

# Menu
Principal() {
	echo "============================"
	echo "Otimizador Linux Instalação"
	echo "============================"
	echo
	echo "1. Listar grupos e usuários"
	echo "2. Adicionar um usuário no sistema"
	echo "3. Adicionar grupo de usuário"
	echo "4. Adicionar usuário no grupo de usuário"
	echo "5. Deletar um grupo de usuário"
	echo "6. Deletar um usuário do sistema"
	echo "7. Permissão de Pastas"
	echo "8. Ambiente de Desenvolvimento"
	echo
	echo -n "Qual a opção desejada? "
	read opcaoPrincipal

	case $opcaoPrincipal in
		1)
			ListUsers
			sleep 5 ;;
		2)
			AddUsers
			sleep 5 ;;
		3)
			AddGroup
			sleep 5 ;;
		4)
			AddUserGroup
			sleep 5 ;;
		5)
			DelGroup
			sleep 5 ;;
		6)
			DelUser
			sleep 5 ;;
		7)
			PermissionPaste
			sleep 5 ;;
		8)
			subMenu() {
				clear
				echo "============================"
				echo "Ambiente de Desenvolvimento"
				echo "============================"
				echo
				echo "1. Ambiente PHP"
				echo "2. Ambiente Laradock"
				echo "3. Ambiente Docker"
				echo "4. Editores de Texto/IDE para programar"
				echo "5. Voltar ao menu principal"
				echo
				echo -n "Qual a opção desejada? "
				read opcao

				case $opcao in
					1)
						InstallBasics
						InstallAmbientePHP
						sleep 5
						clear
						subMenu ;;
					2)
						InstallBasics
						InstallAmbienteLaradock						
		  				sleep 5
		  				clear
						subMenu ;;
		  			3)
						InstallBasics
						InstallDocker
						sleep 5
						clear
						subMenu ;;
					4)
						InstallBasics
						InstallEditores
						sleep 5
						clear
						subMenu ;;
					5)
						clear
						Principal
						sleep 5 ;;
					*) 
						echo "Opção inválida! Tente novamente!" 
						exit 
						Principal
						sleep 5 ;;
				esac
			}
			subMenu
	esac
}
Principal
