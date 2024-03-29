*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/bookRoundTripPageObject/bookRoundTripPage.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123

*** Test Cases ***
#Round-way
Book: Round way - Chicago - Paris - First - Flight only - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City Chicago
    Choose To City Paris
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - New York - Paris - First - Flight and Hotel - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City New York
    Choose To City Paris
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - Toronto - Ottawa - First - Flight only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City Toronto
    Choose To City Ottawa
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - Toronto - Paris - Bussiness - Flight and Hotel - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City Toronto
    Choose To City Paris
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - Toronto - London - Economy - Flight Only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City Toronto
    Choose To City London
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - New York - London - Bussiness - Flight Only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City New York
    Choose To City London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - New York - Ottawa - Bussiness - Flight Only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City New York
    Choose To City Ottawa
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: Round way - Chicago - London - Bussiness - Flight Only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${round-way-button}
    Choose Round-way Flight
    Choose From City Chicago
    Choose To City London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]