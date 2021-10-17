# Infraestrutura

Executar o comando a seguir no diretório **keys** para gerar chaves SSH

```bash
ssh-keygen -q -t rsa -f key -N ''
```

Subir a máquina ubuntu(**servidor**) executando o comando abaixo no diretório **infra**
```bash
vagrant up servidor
```

Ao subir o servidor os seguintes softwares são instalados via apt-get:
- java jdk 11 (*/usr/lib/jvm/java-11-openjdk-amd64*)
- maven (*/usr/share/maven*)
- docker (*/var/lib/docker*)
- jenkins (*/var/lib/jenkins*) 

# Expor Jenkins

Conectar no servidor via SSH executando o comando a seguir no diretório **infra**
```bash
vagrant ssh servidor
```

Instalar **unzip**, criar uma pasta para o **[ngrok](https://ngrok.com/)**, realizar **wget** e extrair o **zip** do ngrok:
```bash
mkdir ngok
cd ngrok
sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
sudo unzip ngrok-stable-linux-amd64.zip
sudo rm -Rf ngrok-stable-linux-amd64.zip
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
