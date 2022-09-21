*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Loginkeywords.robot

*** Test Cases ***
ForgotPassword
    Open My Browser    ${Siteurl}  ${browser}
    Enter Email     umamagesh0594@gmail.com
    Click Element    //*[contains(text(),'Forgot password')]
    Forgot Password
    Click Signin
    Sleep    3s
    Verify the Otp sent
    


