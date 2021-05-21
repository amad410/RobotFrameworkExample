*** Settings ***
Documentation   An example Rest API test case.
Library  RequestsLibrary
Library  OperatingSystem
Library  Collections
Library  BuiltIn
Resource  ../../hooks.robot
Resource  ../../Resources/configs.robot

*** Variables ***


*** Test Cases ***
Ping Google
    [Tags]  smoke
    Comment  first test
    Create Session  myssion  ${uriPath}
    ${resp}=  GET On Session  myssion  search  params=ciao
    ${actual_code}=  convert to string  ${resp.status_code}
    should be equal  ${actual_code}  200
