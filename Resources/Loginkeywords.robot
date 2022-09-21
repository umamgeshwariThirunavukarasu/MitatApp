*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${Siteurl}  https://mitat.pragmiq.com/
${email}    umamagesh0594@gmail.com
${pwd}      Chinna_14
${invalidemail}    umamagesh05945@gmail.com
${invalid pwd}  Chinna_1444
${txt_loginemail}   xpath://*[contains(@placeholder,'Email')]
${txt_loginpassword}   xpath://*[contains(@placeholder,'Password')]
${btn_continue}    xpath://*[contains(text(),'Continue')]
${btn_settings}    xpath://*[contains(@class,'feather feather-settings')]
${btn_signout}     xpath://*[contains(text(),'Sign out')]


*** Keywords ***
Open My Browser
    [Arguments]     ${Siteurl}      ${browser}
    Open Browser    ${Siteurl}      ${browser}
    Maximize Browser Window

Enter Email
    [Arguments]     ${email}
    Input Text    ${txt_loginemail}    ${email}
Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginpassword}    ${password}
Click Signin
    Click Button       ${btn_continue}
Verify Sucessful Login
    Page Should Contain    Hello
Verify Sucessful Logout
    Click Element    ${btn_settings}
    Click Element    ${btn_signout}
    Page Should Contain    Signed out
Enter Invalid ID
    [Arguments]     ${invalidemail}
    Input Text    ${txt_loginemail}    ${invalidemail}
Enter Invalid password
    [Arguments]     ${invalid pwd}
    Input Text    ${txt_loginpassword}    ${invalid pwd}
Verify Invalid idpwd
    Click Button       ${btn_continue}
    Wait Until Page Contains    Wrong email/password
    Page Should Contain    Wrong email/password
Forgot Password
    Input Text    ${txt_loginemail}    umamagesh0594@gmail.com
Verify the Otp sent
    Page Should Contain    OTP sent

Login
    Open My Browser    ${Siteurl}  ${browser}
    Enter Email     ${email}
    Enter Password  ${pwd}
    Click Signin
    Sleep    3 seconds
    Verify Sucessful Login
