# RobotSauceDemo140

Este projeto automatiza testes de uma aplicação web e mobile utilizando Robot Framework. O objetivo é validar funcionalidades como seleção de produtos, login e fluxo de compra, com evidências em screenshots e relatórios detalhados.

## Estrutura do Projeto
- **pages/**: Arquivos de Page Object Model para web.
- **screenshots/**: Evidências visuais dos testes executados.
- **tests/**: Casos de teste organizados por plataforma (web/mobile) e abordagem (simples/PO/DDT).
- **log.html, report.html, output.xml**: Relatórios gerados após execução dos testes.

## Ferramentas Utilizadas
- **Robot Framework**: Framework principal de automação.
- **SeleniumLibrary**: Para automação web.
- **AppiumLibrary**: Para automação mobile.
- **Python**: Linguagem base para execução do Robot Framework.

## Como Rodar Localmente
1. **Pré-requisitos**:
   - Python instalado
   - Instalar Robot Framework: `pip install robotframework`
   - Instalar SeleniumLibrary: `pip install robotframework-seleniumlibrary`
   - (Opcional) Instalar AppiumLibrary para testes mobile: `pip install robotframework-appiumlibrary`
   - Instalar drivers do navegador (ex: ChromeDriver)
   - Para mobile, configurar Appium Server

2. **Executar testes web**:
   ```powershell
   robot tests/web/simples/selecionar_produto.robot
   ```
   Ou para Page Object:
   ```powershell
   robot tests/web/po/selecionar_produto_po.robot
   ```

3. **Executar testes mobile**:
   ```powershell
   robot tests/mobile/selecionar_produto_mobile.robot
   ```

4. **Verificar resultados**:
   - Após a execução, consulte os arquivos `log.html`, `report.html` e `output.xml` na raiz do projeto.
   - Evidências visuais estão em `screenshots/`.