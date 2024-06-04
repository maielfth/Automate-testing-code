*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/checkboxes
${BROWSER}        chrome

*** Test Cases ***
Check and Uncheck Checkboxes
    [Documentation]    Test to check and uncheck checkboxes using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//input[@type='checkbox' and @value='checkbox1']
    Checkbox Should Be Selected    xpath=//input[@type='checkbox' and @value='checkbox1']
    Click Element    xpath=//input[@type='checkbox' and @value='checkbox1']
    Checkbox Should Not Be Selected    xpath=//input[@type='checkbox' and @value='checkbox1']
    [Teardown]    Close Browser
