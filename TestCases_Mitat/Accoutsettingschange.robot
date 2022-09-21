*** Settings ***
Library     SeleniumLibrary
Resource   ../Resources/Accoutsettingkeywords.robot
Resource    ../Resources/Loginkeywords.robot

*** Test Cases ***
Account Settings
    Login
    Account Settings
    Edit Name   Neera
    Enter save
    Sleep    3 seconds
    Confirm the update
    Close All Browsers