*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://example.com/login
${BROWSER}         chrome
${USERNAME}        testuser
${PASSWORD}        password123

*** Test Cases ***
Valid Login Test
    [Documentation]    Test to log in with valid credentials using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@name='username']    ${USERNAME}
    Input Text    xpath=//input[@name='password']    ${PASSWORD}
    Click Button    xpath=//button[contains(text(), 'Login')]
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'welcome-message')]    10s
    Element Text Should Be    xpath=//div[contains(@class, 'welcome-message')]    Welcome, ${USERNAME}
    [Teardown]    Close Browser
