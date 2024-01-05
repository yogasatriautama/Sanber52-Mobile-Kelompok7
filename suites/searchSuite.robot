*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/searchPageObject/searchPage.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application


*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${FLIGHT_NUMBER}             DA935
${INVALID_FLIGHT_NUMBER}     XX123


*** Test Cases ***
Search Booking Number
    Click Sign In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Sign In Button on Login Page
    Wait Until Page Contains Element        xpath=//*[contains(@text, "Sign Out")]
    Click Search Toolbar in Main menu
    Input Flight Number in Search Page      ${FLIGHT_NUMBER} 
    Click Search Button in Search Page
    
Invalid Search Booking Number
    Click Sign In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Sign In Button on Login Page
    Wait Until Page Contains Element        xpath=//*[contains(@text, "Sign Out")]
    Click Search Toolbar in Main menu
    Input Flight Number in Search Page      ${INVALID_FLIGHT_NUMBER} 
    Click Search Button in Search Page

Search Flight without Login
    Page Should Not Contain Element    ${flight-number-input}