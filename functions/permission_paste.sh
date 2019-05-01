# -------------------
# Permissão de pastas
# -------------------

PermissionPaste() {
	echo -n "Informe o caminho da pasta que deseja dá permissão:"
	read caminho
	sudo chmod -R 777 $caminho
	echo
	echo -e "[${green} ($caminho) foi dado permissão!${NC}]\n"
}
