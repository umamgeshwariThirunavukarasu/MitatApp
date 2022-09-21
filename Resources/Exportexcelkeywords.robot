*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${txt_startdate}    xpath://*[contains(@placeholder,'Select start date')]
${btn_date1}    xpath://*[contains(@aria-label,'Choose')][1]
${txt_enddate}    xpath://*[contains(@placeholder,'Select end date')]
${btn_date2}    xpath://*[contains(@aria-label,'Choose')][1]
${btn_excelreport}    xpath://*[contains(text(),'Excel')]
${btn_report}    xpath://*[contains(@class,'mt-button text-truncate  px-48px')]

*** Keywords ***

Enter From Date

    Click Element    ${txt_startdate}
    Click Element    ${btn_date1}
Enter To Date
    Click Element    ${txt_enddate}
    Click Element    ${btn_date2}
 Click Excel Button
    Click Element    ${btn_excelreport}
Click Report button
    Click Element    ${btn_excelreport}


