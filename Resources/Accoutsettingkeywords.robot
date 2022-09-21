*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${btn_settings}     xpath://*[contains(@class,'feather feather-settings')]
${btn_account}    xpath://*[contains(text(),'Account settings')]
${btn_entername}    xpath://*[contains(@placeholder, 'Enter name')]
${btn_save}    xpath://*[contains(text(),'Save')]

*** Keywords ***

Account Settings
    Click Element    ${btn_settings} 
    Click Element    ${btn_account}
    Click Element    ${btn_entername}
    Clear Element Text    ${btn_entername}
Edit Name 
    [Arguments]     ${newname}
    Input Text    ${btn_entername}    ${newname}
Enter save
    Click Element    ${btn_save}
Confirm the update
    Page Should Contain    Details updated