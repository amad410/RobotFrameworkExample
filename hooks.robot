*** Settings ***
Documentation   Setup and Teardown class.
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Resource  Resources/configs.robot

*** Variables *** 
@{list_of_browsers}  chrome  firefox
${myssion}

*** Keywords ***
Open Application
    Run Keyword If  '${browser}'== 'All'  Open Multiple Browsers  ELSE IF  '${browser}'== ''  Open Multiple Browsers   ELSE   Open Single Browser

Open Single Browser
    Comment  opening single browser
    Open Browser  ${wwwPath}  ${browser}
    Maximize Browser Window

Open Multiple Browsers
    Comment  opening multiple browsers
    FOR     ${i}    IN      @{list_of_browsers}
    Open Browser  ${wwwPath}    ${i}
    Maximize Browser Window
    END

Capture Failure
    Capture Page Screenshot
    Close Browser

Exit Application
    Capture Page Screenshot
    Close All Browsers



