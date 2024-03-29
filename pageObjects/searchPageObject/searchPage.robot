*** Settings ***
Resource         ../base/base.robot
Variables        searchpage_locators.yaml


*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input} 
    Input Text    ${username-input}     ${username}

Input Password On Login Page
    Wait Until Element Is Visible    ${password-input}
    [Arguments]   ${password}
    Input Text    ${password-input}     ${password}

Click Search Toolbar in Main menu
    Click Element     ${search-menu}

Input Flight Number in Search Page
    [Arguments]    ${flight-number}
    Wait Until Element Is Visible    ${flight-number-input} 
    Input Text    ${flight-number-input}     ${flight-number}

Click Search Button in Search Page
    Click Element    ${search-button}

Verify Blank Message Appears
    Wait Until Page Contains    ${invalid-message-searchPage}

Verify Search Page Appears
    Wait Until Element Is Visible    ${search-title}
    Wait Until Element Is Visible    ${flight-number-input}
    Wait Until Element Is Visible    ${search-button}