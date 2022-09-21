*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/ChangeLanguageKeywords.robot
Resource    ../Resources/Loginkeywords.robot

*** Test Cases ***
change the language
    Login
    Choose the language
