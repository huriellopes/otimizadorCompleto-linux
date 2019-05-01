# -------------------------------------
# Atualização de repósitorios e pacotes
# -------------------------------------

InstallBasics() {
  echo -n "Atualizando repositórios e pacotes!"
  sudo apt-get -qq update > /dev/null 2>&1
  sudo apt-get -qq upgrade > /dev/null 2>&1
  echo -e "[${green} Atualizado com Sucesso!${NC}]\n"
}
