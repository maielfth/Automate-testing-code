*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/alerts
${BROWSER}        chrome

*** Test Cases ***
Handle Alert
    [Documentation]    Test to handle JavaScript alert
    Open Browser    ${URL}    ${BROWSER}
    Click Button    id=alert_button
    Alert Should Be Present
    Confirm Action
    Wait Until Element Is Visible    id=alert_success    10s
    Element Text Should Be    id=alert_success    Alert handled successfully!
    [Teardown]    Close Browser
