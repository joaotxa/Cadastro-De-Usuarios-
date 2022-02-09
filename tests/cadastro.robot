*** Settings ***
Resource           ../resource/Resource.robot

Test Setup         Abrir navegador
Test Teardown      Fechar navegador


*** Test Cases ***
Cenário: Cadastro de usuários
    Dado que estou na página home do site
    E que tenha preenchido e cadastrado os dados do Nome, E-mail e Senha
    Quando o sistema deverá apresentar os usuários cadastrados
    Então excluir todos os usuário cadastrados


*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site

E que tenha preenchido e cadastrado os dados do Nome, E-mail e Senha
    Prenchimento dos dados do usuario 1
    Prenchimento dos dados do usuario 2
    Prenchimento dos dados do usuario 3

Quando o sistema deverá apresentar os usuários cadastrados
    Usuário 1
    Usuário 2
    Usuário 3

Então excluir todos os usuário cadastrados
    Exluir usuário 1
    Exluir usuário 2
    Exluir usuário 3