*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_secao}    css=.title 

*** Keywords ***
Clicar no produto
    [Arguments]    ${product_name}
    Click Element    css=img[alt="${product_name}"]