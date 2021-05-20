*** Settings ***
Library  OperatingSystem
Suite Setup  Setup chromedriver
*** Keywords ****
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

*** Variables ***
${EXECDIR}  /../drivers/