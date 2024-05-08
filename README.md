# Básico Git Set Up

![Toolbox Playground](img/toolbox-playground.png)

## O que é o Básico Git Set Up

O "Básico Git Set Up" refere-se ao processo de configuração inicial do Git em um projeto ou em um ambiente de desenvolvimento. O Git é um sistema de controle de versão amplamente utilizado que permite rastrear e gerenciar alterações em arquivos de código-fonte.

Ao configurar o Git, você está definindo algumas informações básicas, como seu nome de usuário e endereço de e-mail, que serão associados às suas contribuições no projeto. Essas informações são importantes para identificar quem fez cada alteração no código.

Além disso, durante o processo de configuração, você também pode definir algumas preferências, como a configuração de cores para a interface do Git ou a escolha do editor de texto padrão para mensagens de commit.

A configuração inicial do Git é um passo importante antes de começar a usar o controle de versão em um projeto. Ela permite que você personalize o Git de acordo com suas preferências e garanta que suas contribuições sejam corretamente atribuídas a você

Certifique-se de ter o Git instalado em sua máquina. Você pode baixar e instalar o Git a partir do site oficial: [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## Fazer Upload no GitHub

1. Configure o git para ter acesso a sua conta no Github com os seguitens comandos:
-  ```bash
   git config --global user.name "Seu Nome" 
   ```
Usado para definir o nome do usuário que será associado a todos os commits feitos por este usuário no sistema. A opção --global aplica essa configuração a todos os repositórios Git no seu sistema.

-  ```bash
   git config --global user.email "seuemail@exemplo.com"
   ```
Usado para definir o endereço de e-mail que será associado a todos os commits feitos por este usuário no sistema. A opção --global aplica essa configuração a todos os repositórios Git no seu sistema.


2. Adicione uma ssh-key do seu GitHub na sua máquina local:

- Linux: 

a. Abra o terminal no seu sistema operacional.

b. Verifique se você já possui uma chave SSH gerada executando o seguinte comando: ls -al ~/.ssh. Se você já tiver uma chave SSH, você verá uma lista de arquivos com nomes como id_rsa e id_rsa.pub. Se você não tiver uma chave SSH, você verá uma mensagem de erro informando que o diretório ~/.ssh não existe ou está vazio.

c. Se você não tiver uma chave SSH, você precisará gerar uma nova. Para fazer isso, execute o seguinte comando: ssh-keygen -t rsa -b 4096 -C "seu-email@exemplo.com". Substitua "seu-email@exemplo.com" pelo seu endereço de e-mail associado à sua conta do GitHub. Pressione Enter para aceitar o local padrão do arquivo da chave e, em seguida, pressione Enter novamente para definir uma senha vazia.

d. Agora, você precisa adicionar sua chave SSH ao agente SSH do seu sistema operacional. Execute o seguinte comando: eval "$(ssh-agent -s)".

e. Em seguida, adicione sua chave SSH ao agente SSH executando o seguinte comando: ssh-add ~/.ssh/id_rsa.

f. Agora, você precisa copiar sua chave SSH pública para a área de transferência. Execute o seguinte comando: pbcopy < ~/.ssh/id_rsa.pub. Se você estiver usando um sistema operacional diferente do macOS, use o comando apropriado para copiar o conteúdo do arquivo id_rsa.pub para a área de transferência.

g. Acesse sua conta do GitHub em um navegador da web e vá para as configurações do seu perfil.

h. Na barra lateral esquerda, clique em "SSH and GPG keys" (Chaves SSH e GPG).

i. Clique em "New SSH key" (Nova chave SSH).

j. Dê um nome descritivo para a chave no campo "Title" (Título).

k. Cole a chave SSH pública que você copiou anteriormente na área de transferência no campo "Key" (Chave).

l. Clique em "Add SSH key" (Adicionar chave SSH).

m. Agora, sua chave SSH do GitHub está adicionada à sua máquina local.

Depois de adicionar sua chave SSH, você poderá se autenticar automaticamente ao interagir com o GitHub usando comandos como git push e git clone. Isso tornará o processo de trabalho com o GitHub mais conveniente e seguro.

- Windows:

a. Abra o Git Bash no seu computador com Windows.

b. Verifique se você já possui uma chave SSH gerada executando o seguinte comando: ls -al ~/.ssh. Se você já tiver uma chave SSH, você verá uma lista de arquivos com nomes como id_rsa e id_rsa.pub. Se você não tiver uma chave SSH, você verá uma mensagem de erro informando que o diretório ~/.ssh não existe ou está vazio.

c. Se você não tiver uma chave SSH, você precisará gerar uma nova. Para fazer isso, execute o seguinte comando: ssh-keygen -t rsa -b 4096 -C "seu-email@exemplo.com". Substitua "seu-email@exemplo.com" pelo seu endereço de e-mail associado à sua conta do GitHub. Pressione Enter para aceitar o local padrão do arquivo da chave e, em seguida, pressione Enter novamente para definir uma senha vazia.

d. Agora, você precisa iniciar o agente SSH no seu computador com Windows. Execute o seguinte comando: eval "$(ssh-agent -s)".

e. Em seguida, adicione sua chave SSH ao agente SSH executando o seguinte comando: ssh-add ~/.ssh/id_rsa.

f. Agora, você precisa copiar sua chave SSH pública para a área de transferência. Execute o seguinte comando: clip < ~/.ssh/id_rsa.pub.

g. Acesse sua conta do GitHub em um navegador da web e vá para as configurações do seu perfil.

h. Na barra lateral esquerda, clique em "SSH and GPG keys" (Chaves SSH e GPG).

i. Clique em "New SSH key" (Nova chave SSH).

j. Dê um nome descritivo para a chave no campo "Title" (Título).

k. Cole a chave SSH pública que você copiou anteriormente na área de transferência no campo "Key" (Chave).

l. Clique em "Add SSH key" (Adicionar chave SSH).

m. Agora, sua chave SSH do GitHub está adicionada ao seu computador com Windows.

Depois de adicionar sua chave SSH, você poderá se autenticar automaticamente ao interagir com o GitHub usando comandos como git push e git clone. Isso tornará o processo de trabalho com o GitHub mais conveniente e seguro.

3. Crie um repositório no GitHub

a. Acesse o site do [GitHub](https://github.com) e faça login na sua conta.

b. No canto superior direito da página, clique no botão "+" e selecione "New repository" (Novo repositório).

c. Preencha o nome do repositório no campo "Repository name" (Nome do repositório).

d. (Opcional) Adicione uma descrição para o repositório no campo "Description" (Descrição).

e. Escolha se o repositório será público ou privado, marcando a opção correspondente.

f. (Opcional) Marque a opção "Initialize this repository with a README" (Inicializar este repositório com um README) se desejar criar um arquivo README.md inicial.

g. (Opcional) Adicione um arquivo .gitignore e uma licença ao repositório, selecionando as opções desejadas.

h. Clique no botão "Create repository" (Criar repositório) para criar o novo repositório no GitHub.

4. Acesse a pasta `devops-exercises`:

-  ```bash
   cd devops-exercises
   ```

5. Adicione o repositório remoto do GitHub e faça upload utilizando os seguintes comandos:
-  ```bash
   git init
   ```
Usado para inicializar um novo repositório Git no diretório atual. Ele cria um novo subdiretório chamado .git que contém todos os arquivos necessários para o repositório - um esqueleto de repositório Git. A partir deste ponto, você pode começar a fazer commits no repositório.


-  ```bash
   git add .
   ``` 
Adiciona todos os arquivos modificados e não rastreados do diretório atual e subdiretórios ao índice (staging area) do Git, preparando-os para o próximo commit.

-  ```bash
   git commit -m "Escreva uma mensagem aqui" 
   ```

O comando `git commit -m "Escreva uma mensagem aqui"` cria um novo commit com as alterações que foram adicionadas à área de preparação (staging area) pelo comando `git add`. A opção `-m` permite que você adicione uma mensagem descritiva ao commit, neste caso, "Escreva uma mensagem aqui". Essa mensagem deve descrever as alterações feitas no commit.

-  ```bash
   git remote add origin git@github.com:OWNER/REPOSITORY.git
   ```

`git remote add`: Este é o comando que diz ao Git que você quer adicionar um novo repositório remoto.

`origin`: Este é o nome curto que você dará ao repositório remoto. origin é um nome comum para o repositório remoto principal.

`git@github.com:OWNER/REPOSITORY.git`: Esta é a URL do repositório remoto que você está adicionando. Você deve substituir OWNER pelo nome de usuário do proprietário do repositório e REPOSITORY pelo nome do repositório.

-  ```bash
   git branch -M main
   ```

`git branch`: Este é o comando que diz ao Git que você quer fazer algo relacionado a branches.

`-M`: Esta é uma opção que diz ao Git para mover ou renomear a branch. Se a branch "main" já existir, ela será substituída.

`main`: Este é o novo nome que você está dando para a branch atual.


-  ```bash
   git push -u origin main
   ```

`git push`: Este é o comando que diz ao Git para enviar as alterações para um repositório remoto.

`-u`: Esta opção define o repositório e a branch remotos como o upstream padrão para a branch local atual. Isso significa que, no futuro, você pode apenas usar git push ou git pull sem especificar um repositório ou branch, e o Git saberá que você está se referindo a 'origin' e 'main'.

`origin`: Este é o nome curto do repositório remoto para o qual você está enviando as alterações.

`main`: Esta é a branch do repositório remoto para a qual você está enviando as alterações.

6. Uma vez que o seu repositório foi criado e os arquivos foram enviados para o GitHub remoto, acesse o site github.com e verifique se o seu repositório e os arquivos criados estão lá.

## Contribuindo

Contribuições são bem-vindas! Por favor, leia o arquivo [CONTRIBUTING.md](CONTRIBUTING.md) para mais detalhes.

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.
