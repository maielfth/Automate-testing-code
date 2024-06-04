*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://example.com/login
${BROWSER}         chrome
${USERNAME}        testuser
${PASSWORD}        password123

*** Test Cases ***
Valid Login Test
    [Documentation]    Test to log in with valid credentials using XPath
    Open Browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@id='username']    ${USERNAME}
    Input Text    xpath=//input[@id='password']    ${PASSWORD}
    Click Button    xpath=//button[@id='login_button']
    Wait Until Element Is Visible    xpath=//div[@id='welcome_message']    10s
    Element Text Should Be    xpath=//div[@id='welcome_message']    Welcome, ${USERNAME}
    [Teardown]    Close Browser
