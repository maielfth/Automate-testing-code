*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/alerts
${BROWSER}        chrome

*** Test Cases ***
Handle Alert
    [Documentation]    Test to handle JavaScript alert using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Click Button    xpath=//button[contains(text(), 'Show Alert')]
    Alert Should Be Present
    Confirm Action
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'alert-success')]    10s
    Element Text Should Be    xpath=//div[contains(@class, 'alert-success')]    Alert handled successfully!
    [Teardown]    Close Browser
