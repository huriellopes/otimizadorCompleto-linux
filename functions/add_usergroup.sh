# -----------------
# Adicionar grupo de usuário
# -----------------

AddUserGroup() {
	echo -n "Informe o nome do usuário que será adicionado a grupo de usuários?"
	read nome
	name = $(nome);
	echo
	echo -n "Verificando se o usuário informado já se encontra em algum grupo:"
	groups $name
	echo
	echo "Informe o grupo de usuário que será adicionado o usuário informado?"
	read grupo
	usermod -a -G $grupo $name
	echo -e "[${green} Usuário foi adicionado no grupo de usuários!${NC}]\n"
}
