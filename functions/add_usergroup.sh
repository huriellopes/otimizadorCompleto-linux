# ----------------------------
# Adicionar grupo de usuário
# ----------------------------

AddUserGroup() {
	echo -n "Informe o nome do usuário que será adicionado a grupo de usuários?"
	read nome
	echo
	echo -n "Verificando se o usuário informado já se encontra em algum grupo:"
	sudo groups $nome
	echo
	echo "Informe o grupo de usuário que será adicionado o usuário informado?"
	read grupo
	sudo gpasswd -a $grupo $nome
	echo -e "[${green} Usuário foi adicionado no grupo de usuários!${NC}]\n"
}
