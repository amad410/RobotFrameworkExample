*** Settings ***
Documentation   Home Page objectmaps and keywords
Library     SeleniumLibrary

*** Variables ***
${link_menuCard}  xpath://a[@href="/cards"]

*** Keywords ***
Navigate to Cards Page
    Click Link  ${link_menuCard}