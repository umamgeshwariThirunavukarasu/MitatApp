
*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/Loginkeywords.robot
Resource    ../Resources/Addtripkeywords.robot

*** Test Cases ***
Login Test
    Open My Browser    ${Siteurl}  ${browser}
    Enter Email     ${email}
    Enter Password  ${pwd}
    Click Signin
    Sleep    3 seconds
    Verify Sucessful Login
Logout Test
    Verify Sucessful Logout
    Close All Browsers
    Enter date