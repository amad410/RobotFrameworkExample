
*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Variables  environment.py


*** Variables ***
${wwwPath}  ${getBaseURL('${env}')}
${browser}  ${browser}

*** Keywords ***
Configure Selenium
     Set Selenium Speed    .25 Seconds

