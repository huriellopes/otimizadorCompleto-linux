# -------------------------
# Deletar grupo de usuários
# -------------------------

DelGroup() {
	echo -n "Informe o nome do grupo de usuários para deletar?"
	read grupo
	groupdel $grupo
	echo
	echo -e "[${green} Grupo de usuários deletado com sucesso!${NC}]\n"
}
