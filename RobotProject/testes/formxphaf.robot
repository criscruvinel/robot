*** Setting ***
Library     SeleniumLibrary


*** Variables ***
${input_name}             //input[@id='name']
${input_phone}            //input[@id='phone']
${input_email}            //input[@id='email']
${input_password}         //input[@id='password']
${textarea_address}       //textarea[@id='address']
${button_submit}          //button[@name='submit']


*** Keywords ***
 abrir navegador e acessar o site 
    Open Browser      https://itera-qa.azurewebsites.net/home/automation   chrome
 preencher campos 
    Input Text       ${input_name}         Cristiane 
 
    Input Text       ${input_phone}        9880000000
 
    Input Text       ${input_email}        cristianenunes@gmail.com 
 
    Input Text       ${input_password}     123456   
   
    Input Text       ${textarea_address}   xxxxxxxxxxxxxxxxxxxxxxxxx
   
         
clicar em submit
    Click Element   ${button_submit}
 fechar navegador 
    Close Browser
    
*** Test Cases ***
Cenário 1:Preencher formulário 
    abrir navegador e acessar o site 
    preencher campos
    clicar em submit
    fechar navegador 