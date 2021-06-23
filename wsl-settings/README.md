## INSTALAR O WSL2 COM UBUNTU

Utilize a [documentação do WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install-win10) fazer a instalação do **Subsistema Windows para Linux** com Ubuntu.

## CONFIGURAR WORKFLOW COM WSL2

1. Instale o WSL com Ubuntu no Windows
2. Depois de configurado atualize com o comando `sudo apt-get update && sudo apt-get dist-upgrade`
3. Instale o **ZSH** com o comando `sudo apt install zsh`
4. Instale o **Oh My ZSH** com o comando `$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
5. Configure o VSCode no Windows, bem como instale a extensão WSL Remote
6. No WSL dê um clone em `git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
7. Depois abra o arquivo **.zshrc** e substitua [por este conteúdo](./.zshrc)
8. Agora vamos **[criar uma chave SSH](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)** para conectar ao GitHub
9. Crie uma chave utilizando o comando `$ ssh-keygen -t rsa -b 4096 -C "email@email.com"`
10. Depois de criar, entre na pasta `.ssh` e dê o comando `more id_rsa.pub` para visualizar a chave
11. Em seguida [copie a chave e coloque no GitHub](https://github.com/settings/keys)
12. Para gerenciar **versões do NodeJS** vamos **instalar o [NVM](https://github.com/nvm-sh/nvm)**
13. Nesse caso instalaremos o [zsh-nvm](https://github.com/lukechilds/zsh-nvm) com o comando `git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm`
14. Em seguida executar o source com o comando `source ~/.zsh-nvm/zsh-nvm.plugin.zsh`
15. Pra finalizar essa parte, instale a versão mais recente do NodeJS com o comando `nvm install --lts`
16. Por fim instalaremos o [gerenciador de pacotes Yarn](https://classic.yarnpkg.com/en/docs/install#windows-stable)
17. Execute o comando `curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`
18. Em seguida o comando `echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`
19. E por fim execute `sudo apt update && sudo apt install --no-install-recommends yarn`

### INFORMAÇÕES

Caso o NVM "quebre" m algum momento, utilize os comandos `export NVM_DIR="~/.nvm"` e `source ~/.nvm/nvm.sh`
