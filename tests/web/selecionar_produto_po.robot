*** Settings ***
Resource    ../../pages/base_page.robot

Test Setup    base_page.Abrir navegador
Test Teardown    base_page.Fechar navegador


*** Test Cases ***
Selecionar Mochila
    Preencher usuario    standard_user
    Preencher senha    secret_sauce
    Clicar no botao Login
    Element Text Should Be    ${titulo_secao}    Products
    Clicar no produto    Sauce Labs Backpack
    Element Text Should Be    ${inventory_item_product_name}    Sauce Labs Backpack
    Element Text Should Be    ${inventory_item_product_price}    $29.99
    Clicar no botao "Add to cart"
    Clicar no Carrinho
    Element Text Should Be    ${titulo_secao}    Your Cart 
    Element Text Should Be    ${cart_product_name}    Sauce Labs Backpack
    Element Text Should Be    ${cart_product_price}    $29.99
    Element Text Should Be    ${cart_product_quantity}    1
    Realizar Logout