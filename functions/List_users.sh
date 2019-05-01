# -----------------
# Listando usuários
# -----------------

ListUsers() {
	echo -n "Listando usuários do linux"
	echo
	echo -n "Listando os usuários com senhas criptografadas"
	cat /etc/passwd
	echo
	echo -n "Listando os grupos de usuários"
	cat /etc/groups
	echo -e "[${green} Usuários listados com Sucesso!${NC}]\n"
}
