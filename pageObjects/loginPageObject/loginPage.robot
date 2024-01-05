*** Settings ***
Resource                ../base/base.robot
Resource                ../homePageObject/homePage.robot
Variables               loginpage_locators.yaml

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${WRONG_EMAIL}               invalid@ngendigital.com
${WRONG_PASSWORD}            invalid_password

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input User Email On Login Page
    [Arguments]   ${email}
    Input Text    ${email_input_loginPage}    ${email}

Input User Password On Login Page
    [Arguments]   ${password}
    Input Text    ${password_input_loginPage}    ${password}

Input User Wrong Email On Login Page
    [Arguments]   ${wrong_email}
    Input Text    ${email_input_loginPage}    ${wrong_email}   

Input User Wrong Password On Login Page
    [Arguments]   ${wrong_password}
    Input Text    ${password_input_loginPage}    ${wrong_password}    

Click Sign In Button On Login Page
    Click Element    ${signIn_button_loginPage}

Login With Valid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login With Invalid Email
    [Arguments]    ${email}=${WRONG_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page

Login With Invalid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${WRONG_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page    
