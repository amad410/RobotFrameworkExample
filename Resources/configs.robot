
*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Variables  environment.py
Variables  environmentAPI.py


*** Variables ***
${wwwPath}  ${getBaseURL('${env}')}
${uriPath}  ${getBaseAPIURL('${env}')}

*** Keywords ***
Configure Selenium
     Set Selenium Speed    .25 Seconds

