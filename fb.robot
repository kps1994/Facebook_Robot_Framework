*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.fb.com/

*** Keywords ***
Open the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Close the browser
    Close browser
Open Login Page
    Go To   ${URL}
Input Username
    [Arguments]     ${USERNAME}
    Input Text    ID:email     ${USERNAME}
Input Pwd
    [Arguments]     ${PASSWORD}
    Input Text    ID=pass    ${PASSWORD}
Click Login
    Click Button    name=login
Error message
    Page Should Contain    Wrong credentials
