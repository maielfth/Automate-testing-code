*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/radiobuttons
${BROWSER}        chrome

*** Test Cases ***
Select Radio Button
    [Documentation]    Test to select a radio button using XPath
    Open Browser    ${URL}    ${BROWSER}
    Click Radio Button    xpath=//input[@id='radio2']
    Radio Button Should Be Selected    xpath=//input[@id='radio2']
    [Teardown]    Close Browser
