*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/alerts
${BROWSER}        chrome

*** Test Cases ***
Handle Alert
    [Documentation]    Test to handle JavaScript alert using XPath
    Open Browser    ${URL}    ${BROWSER}
    Click Button    xpath=//button[@id='alert_button']
    Alert Should Be Present
    Confirm Action
    Wait Until Element Is Visible    xpath=//div[@id='alert_success']    10s
    Element Text Should Be    xpath=//div[@id='alert_success']    Alert handled successfully!
    [Teardown]    Close Browser
