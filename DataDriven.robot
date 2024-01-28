*** Settings ***
Library     SeleniumLibrary
Resource    ../fb/fb.robot
Library   DataDriver    ../fb/names.xlsx
Suite Setup    Open the browser
#Suite Teardown      Close the browser
Test Template   Invalid Login

*** Test Cases ***
Test_run ${USERNAME}  and   ${PASSWORD}


*** Keywords ***
Invalid Login
    Open Login Page
    Set Browser Implicit Wait    10
    [Arguments]     ${USERNAME}     ${PASSWORD}
    Input Username    ${USERNAME}
    Input Pwd    ${PASSWORD}
    Click Login
    Set Browser Implicit Wait     15
    Error message
