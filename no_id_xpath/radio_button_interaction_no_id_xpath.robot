*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/radiobuttons
${BROWSER}        chrome

*** Test Cases ***
Select Radio Button
    [Documentation]    Test to select a radio button using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Click Radio Button    xpath=//input[@type='radio' and @value='radio2']
    Radio Button Should Be Selected    xpath=//input[@type='radio' and @value='radio2']
    [Teardown]    Close Browser
