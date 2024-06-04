*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/radiobuttons
${BROWSER}        chrome

*** Test Cases ***
Select Radio Button
    [Documentation]    Test to select a radio button
    Open Browser    ${URL}    ${BROWSER}
    Click Radio Button    id=radio2
    Radio Button Should Be Selected    id=radio2
    [Teardown]    Close Browser
