# Infraestrutura

Executar o comando `ssh-keygen -q -t rsa -f key -N ''` no diretório **keys** para gerar chaves SSH

Subir a máquina ubuntu(**servidor**) executando o comando `vagrant up servidor` no diretório **infra**
> presumindo que VirtualBox e Vagrant estejam instalados



Ao subir o servidor os seguintes softwares são instalados via [provision.sh](https://github.com/RafaelClaumann/wallet-api-v2/blob/master/infra/provision.sh):
- `java jdk 11` (/usr/lib/jvm/java-11-openjdk-amd64)
- `maven` (/usr/share/maven)
- `docker` (/var/lib/docker)
- `jenkins` (/var/lib/jenkins) 

# Expor Jenkins

Conectar-se ao servidor ubuntu via SSH executando o comando `vagrant ssh servidor` no diretório **infra**

Instalar **unzip**, criar uma pasta para o **[ngrok](https://ngrok.com/)**, realizar **wget** e extrair o **zip** do ngrok:
> NGROK é utilizado para expor o servidor á internet, utilizamos o link que será gerado pelo NGROK no [Github Webhook](https://docs.github.com/en/developers/webhooks-and-events/webhooks/about-webhooks) que notificará o jenkins sobre as mudanças no repositório. <br> 
```bash
mkdir ngok
cd ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm -Rf ngrok-stable-linux-amd64.zip
```

Autenticar-se no **[ngrok](https://ngrok.com/)** e expor a porta 8080 HTTP:
> Um link será gerado, basta abri-lo para ter acesso ao Jenkins e realizar a configuração inicial.
```bash
./ngrok authtoken <YOUR-AUTH-TOKEN>
./ngrok http 8080
```
# Chaves SSH para Conectar o Jenkins ao Github

Alternar para o usuario **Jenkins** e gerar as chaves:
> Chaves geradas costumam ficar no diretório **/var/lib/jenkins/.ssh/** com o nome de **id_rsa** & **id_rsa.pub**
```bash
sudo su -s /bin/bash jenkins  # alternar para o usuario jenkins
ssh-keygen -t rsa -b 4096 -C "email@email.com"  # gerar chaves
```
