*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/bookPageObject/bookPage.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123


*** Test Cases ***
#One-way
Book: One way - Toronto - Paris - Economy - Flight only - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City Toronto
    Choose To City Paris
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]