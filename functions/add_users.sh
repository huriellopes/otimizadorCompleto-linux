# -----------------
# Adicionar usuário
# -----------------

 AddUsers() {
 	echo -n "Informe o nome de usuário que sera adicionado no sistema operacional?"
 	read nome
 	adduser $nome
 	echo -e "[${green} Usuário adicionado com sucesso!${NC}]\n"
 }
