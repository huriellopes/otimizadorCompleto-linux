# -------------------------
# Deletar usuário
# -------------------------

DelUser() {
	echo -n "Informe o nome de usuário para deletar?"
	read nome
	sudo deluser $nome
	echo
	echo -e "[${green} usuário deletado com sucesso!${NC}]\n"
}
