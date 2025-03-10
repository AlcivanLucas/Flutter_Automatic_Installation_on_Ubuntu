#!/bin/bash

# Script de instalação automática do Flutter para Ubuntu
# Baseado na documentação oficial: https://docs.flutter.dev/get-started/install/linux/android

# Atualizar repositórios
sudo apt update -y

sudo apt-get upgrade -y

# Instalar dependências
sudo apt install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    libstdc++6 \
    software-properties-common \
    ninja-build \
    pkg-config \
    libgtk-3-dev \ 
    clang \
    cmake \

# Pré requisitos para o android studio 
sudo apt-get install -y \
    libc6:amd64 \
    libstdc++6:amd64 \
    lib32z1 \
    libbz2-1.0:amd64 \

# Criar diretório de instalação
mkdir -p ~/development
cd ~/development

# Baixar e extrair o Flutter (canal stable)
git clone https://github.com/flutter/flutter.git -b stable

# Adicionar Flutter ao PATH
echo 'export PATH="$PATH:$HOME/development/flutter/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$HOME/development/flutter/bin"' >> ~/.profile

# Carregar as variáveis de ambiente imediatamente
source ~/.bashrc

# Instalar Android SDK (via sdkmanager)
sudo apt install -y openjdk-11-jdk
mkdir -p ~/Android/Sdk
echo 'export ANDROID_HOME="$HOME/Android/Sdk"' >> ~/.bashrc
echo 'export ANDROID_HOME="$HOME/Android/Sdk"' >> ~/.profile
echo 'export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"' >> ~/.profile
source ~/.bashrc

# Baixar e instalar command-line tools
cd ~/Android/Sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip commandlinetools-linux-9477386_latest.zip
mv cmdline-tools latest
mkdir cmdline-tools
mv latest cmdline-tools/
rm commandlinetools-linux-9477386_latest.zip

# Aceitar licenças do Android OBS: Aqui o comando não foi encontrado
yes | sdkmanager --licenses

# Instalar componentes do Android  OBS: Aqui o comando não foi encontrado
sdkmanager "platform-tools" "platforms;android-33" "build-tools;33.0.0"

# Instalar Android Studio via Snap
sudo snap install android-studio --classic

# Verificar instalação e instalar dependências restantes
flutter doctor

# aceita as lincensas do android toolchain 
sudo flutter doctor --android-licenses -y 

# Mensagem final
echo -e "\n\033[1;32mInstalação completa!\033[0m"
echo "Para finalizar a configuração:"
echo "1. Abra o Android Studio e complete o processo, é importante seu corno!"
echo "2. Execute 'flutter doctor' para verificar dependências restantes"
echo "3. Reinicie o terminal ou execute 'source ~/.bashrc'"
echo "OBS: se ele não encontrar o android studio execute 'flutter config --android-studio-dir /snap/android-studio/current'"


# feito com muito odio e dedicação por AlcivanLucas