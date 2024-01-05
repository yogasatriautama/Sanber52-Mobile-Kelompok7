*** Settings ***
Resource                ../base/base.robot
Variables               loginpage_locators.yaml


*** Keywords ***
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