*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# variaveis em page object são seletores dos elementos da página
${txt_usuario}    css=[data-test="username"]
${txt_senha}    css=[data-test="password"]
${btn_login}    id=login-button


*** Keywords ***
Preencher usuario
    [Arguments]    ${usuario}
    Input Text    ${txt_usuario}    ${usuario}

Preencher senha
    [Arguments]    ${senha}
    Input Password    ${txt_senha}    ${senha}

Clicar no botao Login 
    Click Element    ${btn_login}

