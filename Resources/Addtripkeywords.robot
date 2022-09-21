*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${btn_addnewtrip}  xpath://*[contains(text(),'Add new trip')]
${txt_distance}     xpath://*[contains(@placeholder,'Enter distance')]
${txt_date}     xpath://*[contains(@placeholder,'Enter date')]
${btn_date}     xpath://*[contains(@aria-label,'Choose')][1]
${txt_from}     xpath://*[contains(@placeholder,'Enter starting point')]
${txt_to}     xpath://*[contains(@placeholder,'Enter destination point')]
${txt_purpose}     xpath://*[contains(@placeholder,'Enter purpose')]
${btn_addtrip}      xpath://*[contains(text(),'Add trip')]

*** Keywords ***

Click Addnewtrip
    Click Button    ${btn_addnewtrip}

Enter Distance
    [Arguments]   ${distance}
    Input Text    ${txt_distance}    ${distance}
Enter date
    Click Element    ${txt_date}
    Click Element    ${btn_date}
Enter From field
    [Arguments]   ${from}
    Input Text    ${txt_from}       ${from}
Enter Tofield
    [Arguments]   ${To}
    Input Text    ${txt_To}       ${To}
Enter Purpose
    [Arguments]   ${Purpose}
    Input Text    ${txt_purpose}       ${Purpose}
 Click Continue
    Click Button    ${btn_addtrip}
cofirm trip added
    Page Should Contain    Trip added
    
    

