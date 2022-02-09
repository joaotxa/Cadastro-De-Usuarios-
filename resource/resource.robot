*** Settings ***
Library                SeleniumLibrary

*** Variables ***
${BROWSER}             chrome
${URL}                 http://prova.stefanini-jgr.com.br/teste/qa/

*** Keywords ***
Abrir navegador
    Open Browser                      ${URL}    ${BROWSER}
    Maximize Browser Window
Fechar navegador
    Close Browser
    Capture Page Screenshot

Acessar a página home do site
    Title Should Be                   Cadastro de usuários
    Wait Until Element Is Visible     xpath=//h2[normalize-space()='Formulário']   
    Capture Page Screenshot

Prenchimento dos dados do usuario 1
    Input Text                        id=name        João Victor de Araujo
    Input Text                        id=email       Joaotxa@gmail.com
    Input Text                        id=password    qa123456
    Click Element                     id=register
    Capture Page Screenshot

Prenchimento dos dados do usuario 2
    Input Text                        id=name        Anderson White
    Input Text                        id=email       Andersontxa@gmail.com
    Input Text                        id=password    qa123456
    Click Element                     id=register
    Capture Page Screenshot

Prenchimento dos dados do usuario 3
    Input Text                        id=name        Diego Alexandrino
    Input Text                        id=email       Diegotxa@gmail.com
    Input Text                        id=password    qa123456
    Click Element                     id=register
    Capture Page Screenshot


Usuário 1
    Wait Until Element Is Visible     id=tdUserId1
    
Usuário 2
    Wait Until Element Is Visible      id=tdUserName2

Usuário 3
    Wait Until Element Is Visible      xpath=//td[@id='tdUserEmail3']
    Capture Page Screenshot

Exluir usuário 1
    Click Element                      id=removeUser1
    Capture Page Screenshot

Exluir usuário 2
    Click Element                      id=removeUser2
    Capture Page Screenshot

Exluir usuário 3
    Click Element                      id=removeUser3
    Capture Page Screenshot
