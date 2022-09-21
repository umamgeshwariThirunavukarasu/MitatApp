*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/Exportexcelkeywords.robot
Resource    ../Resources/Loginkeywords.robot

*** Test Cases ***
Export Excel
    Login
    Enter From Date
    Enter To Date
    Click Excel Button
    Click Report button
    Close All Browsers