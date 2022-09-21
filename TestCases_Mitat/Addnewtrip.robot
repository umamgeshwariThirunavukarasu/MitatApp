*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/Addtripkeywords.robot
Resource    ../Resources/Loginkeywords.robot


*** Test Cases ***
Addnewtrip
    Login
    Click Addnewtrip
    Enter Distance  77
    Enter date
    Enter From field    Malmi
    Enter To field  Turku
    Enter Purpose   Buisness
    Click Continue
    Sleep    3 seconds
    cofirm trip added
    Close All Browsers