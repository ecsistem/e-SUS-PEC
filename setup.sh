# chmod +x instalacoes.sh

#!/bin/bash

# Atualiza a lista de pacotes disponíveis e atualiza os pacotes instalados
sudo apt update && sudo apt upgrade -y

# baixar oe SUS-AB-PEC
wget https://arquivos.esusab.ufsc.br/PEC/mtRazOmMxfBpkEMK/5.2.28/eSUS-AB-PEC-5.2.28-Linux64.jar

# Instala o Java
sudo apt install default-jre -y

# Instala o Docker
sudo apt install docker.io -y

# Instala o Docker Compose
sudo apt install docker-compose -y

# Buildar o eSUS-AB-PEC
sh build.sh -f eSUS-AB-PEC-5.2.28-Linux64.jar