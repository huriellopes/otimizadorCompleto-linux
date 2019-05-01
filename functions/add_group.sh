# -----------------
# Adicionar grupo de usuário
# -----------------

AddGroup() {
	echo -n "Informe o nome do grupo de usuário que será criado?"
	read nomeUser
	addgroup $nomeUser
	echo -e "[${green} Grupo de usuários criado com sucesso!${NC}]\n"
}
