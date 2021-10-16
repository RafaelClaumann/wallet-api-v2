# Infraestrutura

**Requisitos:** VirtualBox & Vagrant


Executar o comando a seguir no diretório **keys** 

```bash
ssh-keygen -q -t rsa -f key -N ''
```

Subir a máquina ubuntu chamada **servidor** executando o comando a seguir no diretório **infra**
```bash
vagrant up servidor
```

Ao subir o servidor os seguintes softwares são instalados via apt-get:
- java jdk 11
- docker
- jenkins

Conectar no servidor via SSH executando o comando a seguir no diretório **infra**
```bash
vagrant ssh servidor
```
