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
Book: One way - Toronto - Paris - First - Flight only - with Day
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
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - Toronto - London - Bussiness - Flight and Hotel - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City Toronto
    Choose To City London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - Toronto - Ottawa - First - Flight only - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City Toronto
    Choose To City Ottawa
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight only
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - New York - London - Bussiness - Flight and Hotel - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City New York
    Choose To City London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - New York - Paris - Economy - Flight only - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City New York
    Choose To City Paris
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose Flight only
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - New York - Ottawa - First - Flight and Hotel - with Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City New York
    Choose To City Ottawa
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Choose Checkbox Day
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - Chicago - Ottawa - First - Flight only - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City Chicago
    Choose To City Ottawa
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

Book: One way - Chicago - Ottawa - Bussiness - Flight and Hotel - without Day
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Choose One-way Flight
    Choose From City Chicago
    Choose To City Ottawa
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Submit Book
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]

#Expected to Fail
End Date Cannot be Before Start Date And Invalid End Date Message must shown
    Login With Valid Credentials        ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify User Is Logged In
    Click Book Button On Home Page
    Verify Book Page Appears
    Choose Start Date and Choose End Date before Start Date
    Submit Book
    Verify Invalid End Date Message Appears

