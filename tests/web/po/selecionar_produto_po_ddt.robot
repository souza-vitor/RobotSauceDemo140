*** Settings ***
Resource    ../../../pages/base_page.robot
Test Template    Selecionar Produto

*** Test Cases ***
TC001    Sauce Labs Backpack    $29.99
TC002    Sauce Labs Bike Light    $9.99    
TC003    Sauce Labs Bolt T-Shirt    $15.99
TC004    Sauce Labs Fleece Jacket    $49.99
TC005    Sauce Labs Onesie    $7.99
TC006    Test.allTheThings() T-Shirt (Red)    $15.99

*** Keywords ***
Selecionar Produto
    [Arguments]    ${prodct_name}    ${product_price}
    Tirar Screenshot    1-Home
    Preencher usuario    standard_user
    Preencher senha    secret_sauce
    Tirar Screenshot    2-Login Preenchido
    Clicar no botao Login
    Element Text Should Be    ${titulo_secao}    Products
    Tirar Screenshot    3-Lista de Produtos
    Clicar no produto    ${prodct_name}
    Element Text Should Be    ${inventory_item_product_name}    ${prodct_name}
    Element Text Should Be    ${inventory_item_product_price}    ${product_price}
    Tirar Screenshot    4-Detalhes do Produto
    Clicar no botao "Add to cart"
    Clicar no Carrinho
    Element Text Should Be    ${titulo_secao}    Your Cart 
    Element Text Should Be    ${cart_product_name}    ${prodct_name}
    Element Text Should Be    ${cart_product_price}    ${product_price}
    Element Text Should Be    ${cart_product_quantity}    1
    Tirar Screenshot    5-Carrinho
    Realizar Logout