*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/dropdown
${BROWSER}        chrome
${OPTION}         Option 2

*** Test Cases ***
Select Dropdown Option
    [Documentation]    Test to select an option from a dropdown menu using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Select From List By Label    xpath=//select[contains(@class, 'dropdown-menu')]    ${OPTION}
    Element Text Should Be    xpath=//div[contains(@class, 'selected-option')]    You selected: ${OPTION}
    [Teardown]    Close Browser
