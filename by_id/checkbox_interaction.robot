*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/checkboxes
${BROWSER}        chrome

*** Test Cases ***
Check and Uncheck Checkboxes
    [Documentation]    Test to check and uncheck checkboxes
    Open Browser    ${URL}    ${BROWSER}
    Click Element    id=checkbox1
    Checkbox Should Be Selected    id=checkbox1
    Click Element    id=checkbox1
    Checkbox Should Not Be Selected    id=checkbox1
    [Teardown]    Close Browser
