*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/Loginkeywords.robot

*** Test Cases ***
Verify Invalid
      Open My Browser    ${Siteurl}  ${browser}
      Enter Invalid ID    ${invalidemail}
      Enter Invalid password    ${invalid pwd}
      Verify Invalid idpwd
      Close All Browsers

Demo Failure
      Open My Browser    ${Siteurl}  ${browser}
      Enter Invalid ID    ${invalidemail}
      Enter Invalid password    ${invalid pwd}
      Click Signin
      Close All Browsers