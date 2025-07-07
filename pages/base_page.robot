*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    cart_page.robot
Resource    inventory_item_page.robot
Resource    inventory_page.robot
Resource    login_page.robot

*** Variables ***
${timeout}    5000ms
${url}        https://www.saucedemo.com
${browser}    Edge
${date}       

*** Keywords ***
Abrir navegador
    Register Keyword To Run On Failure    Tirar Screeshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=.login_logo    ${timeout}

Fechar navegador
    Sleep    500ms     # pode ser necessario para dar tempo de fazer a ultima validação
    Close Browser
    
Clicar no Carrinho
    Click Element    css=[data-test="shopping-cart-link"]
    Wait Until Element Contains    css=[data-test="title"]    Your Cart    ${timeout}

Realizar Logout
    Click Element    id=react-burger-menu-btn
    Click Element    id=logout_sidebar_link
    Wait Until Element Is Visible    css=.login_logo    ${timeout}


Obter Data e hora
    #Ler a data e hora do S.O.
    ${date} =     Get Current Date
    ${date} =     Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S

Tirar Screenshot
    [Arguments]    ${screenshot_name}
    
    Capture Page Screenshot    screenshots/${TEST_NAME}/${date}/${screenshot_name}.jpg