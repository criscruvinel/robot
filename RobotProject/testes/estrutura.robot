*** Setting ***
Library     SeleniumLibrary


*** Variables ***
${variavel1}      teste
${variavel2}      hhhhh
${variavel3}      12434


*** Keywords ***
abrir site da google    
    Open Browser       https://www.google.com.br/       chrome 
fechar navegador
     Close Browser
   
abrir site globo
    Open Browser      https://www.globo.com/           chrome 

*** Test Cases ***
Cenário 1: Teste de abrir site google
    abrir site da google
    fechar navegador
    
Cenário 2: Teste de abrir site globo
   abrir site globo
   fechar navegador
    
    


