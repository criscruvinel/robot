*** Setting ***
Library     SeleniumLibrary


*** Variables ***
${div_female}                      id:female
${div_monday}                      id:monday
${selector_country}                //select
${years_exp_auto}                  //*[@class='custom-control custom-radio']//*[@for='1year']
${div_selenium_webdriver}          //*[@class='custom-control custom-checkbox']//*[@for='selenium']
${span_upload}                     //*[@class='input-group-text']       

*** Keywords ***
abrir navegador e acessar o site 
   Open Browser                                  https://itera-qa.azurewebsites.net/home/automation   chrome
   
marcar gênero 
   Click Element                                 ${div_female}                                      
   
marcar dias da semana 
   Click Element                                 ${div_monday}         
   
selecionar país  
   Select From List By Label                     ${selector_country}    Spain                                        
marcar anos de automação           
   Click Element                                 ${years_exp_auto}                                     
   
marcar ferramentas 
   Click Element                                ${div_selenium_webdriver}                                    
    
marcar arquivos 
   Click Element                                ${span_upload}
                                          
fechar navegador 
   Close Browser
    
*** Test Cases ***
Cenário 1:Preencher formulário 
    abrir navegador e acessar o site 
    marcar gênero
    marcar dias da semana 
    selecionar país
    marcar anos de automação
    marcar ferramentas 
    marcar arquivos 
    fechar navegador 