*** Settings ***
Resource                ../homePageObject/homePage.robot
Resource                ../base/base.robot
Variables               loginpage_locators.yaml


*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Verify Invalid Message Appears
    Wait Until Page Contains    ${invalid_message_loginPage}
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${email_input_loginPage} 
    Input Text    ${email_input_loginPage}     ${username}

Input Password On Login Page
    Wait Until Element Is Visible    ${password_input_login_page}
    [Arguments]   ${password}
    Input Text    ${password_input_login_page}     ${password}
    
Click Sign In Button on Login Page
    Click Element     ${signIn_button_loginPage}

Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input Username On Login Page        ${username}
    Input Password On Login Page        ${password}
    Click Sign In Button On Login Page