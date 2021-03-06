# wallet-api-v2 (WIP)

O objetivo é criar um servidor com **Jenkins** e **Docker** para executar uma **pipeline CI/CD** com deploy de uma aplicação java em um **registry privado**. \
O arquivo [infraestrutura](https://github.com/RafaelClaumann/wallet-api-v2/blob/master/infra/README.md) no diretório **/infra** contém mais informações.

Requisitos de Infra:
  - [Vagrant](https://www.vagrantup.com/downloads)  (provisiona as maquinas virtuais via script)
  - [VirtualBox](https://www.virtualbox.org/)  (hospeda as maquinas provisionadas)

<br> 

<details>
<summary>TODOS & DONE</summary>
<p>

- [x] subir servidor
- [x] criar Dockerfile(container) para aplicação
- [x] instalar jenkins, docker, java, maven e ngrok
- [x] configuração de chaves SSH(github - Jenkins)
- [x] criação script de pipeline declarativo Jenkinsfile
- [x] primeira execução da pipeline develop/master
- [ ] melhorar documentação de **infra**
    - [ ] armazenar credencial SSH(github - jenkins) no Jenkins
    - [ ] configuração do repositório git(Webhooks & DeployKey)
    - [ ] configuração git, java & maven no Jenkins
    - [ ] criar pipeline e executar primeiro build
- [x] build imagem docker da aplicação
- [ ] criar registry local no servidor 
- [ ] upload da aplicação no registry local
- [ ] criar release v1.0.0 no github
- [ ] refatorar a lógica da [wallet-api](https://github.com/RafaelClaumann/wallet-api) para wallet-api-v2
- [ ] integração pipeline com SonarQube

</p>
</details>  
