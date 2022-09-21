*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${btn_lang}   xpath://*[contains(@class,'feather feather-globe')]
${btn_fin}    xpath://*[contains(text(),'Finnish')]

*** Keywords ***

Choose the language
    Click Element    ${btn_lang}
    Click Element    ${btn_fin}
    Wait Until Page Contains    Vie matkaraportti osoitteeseen
    Close All Browsers


