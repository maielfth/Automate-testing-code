*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://shopee.co.th/buyer/login?next=https%3A%2F%2Fshopee.co.th%2F
${BROWSER}         chrome
${USERNAME}        testuser
${PASSWORD}        password123

*** Test Cases ***
Valid Login Test
    [Documentation]    Test to log in with valid credentials
    Open Browser    ${URL}    ${BROWSER}
    Input Text    Xpath=//input[@type='text']   ${USERNAME}
    Input Text    Xpath=//input[@type='password']   ${PASSWORD}
    Click Button    xpath=//button[contains(text(), 'เข้าสู่ระบบ')]
    Wait Until Element Is Visible    id=welcome_message    10s
    Element Text Should Be    id=welcome_message    Welcome, ${USERNAME}
    [Teardown]    Close Browser
