*** Settings ***
Documentation   An example web UI test case.
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library  BuiltIn
Resource  ../../hooks.robot
Resource  ../../Resources/configs.robot
Resource  ../../PageObjects/Common/CommonPage.robot
Resource  ../../PageObjects/HomePage/HomePage.robot

Suite Setup  Configure Selenium
Test Setup  Open Application
Test Teardown  Capture Failure   
Suite Teardown  Exit Application

*** Test Cases ***
Should contain 'Invoice Manager'
    [Tags]  smoke
    Comment  first test
    Page Should Contain     Invoice Manager

*** Test Cases ***
Should contain 'Cards'
    [Tags]  smoke
    Comment  first test
    Page Should Contain     Cards

*** Test Cases ***
Navigate to Cards Menu
    [Tags]  regression
    Comment  Click cards menu
    HomePage.Navigate to Cards Page

