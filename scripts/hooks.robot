*** Settings ***
Documentation   Setup and Teardown class.
Library  SeleniumLibrary
Library  OperatingSystem
Resource  Resources/configs.robot


*** Keywords ***
Open Application
    Comment  opening browser
    Open Browser  ${wwwPath}  ${browser}
    Maximize Browser Window

Capture Failure
    Capture Page Screenshot
    Close Browser

Exit Application
    Capture Page Screenshot
    Close Browser


