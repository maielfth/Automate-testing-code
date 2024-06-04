*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/contact
${BROWSER}        chrome
${NAME}           John Doe
${EMAIL}          john.doe@example.com
${MESSAGE}        This is a test message.

*** Test Cases ***
Submit Contact Form
    [Documentation]    Test to fill out and submit the contact form
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=name    ${NAME}
    Input Text    id=email    ${EMAIL}
    Input Text    id=message    ${MESSAGE}
    Click Button    id=submit_button
    Wait Until Element Is Visible    id=success_message    10s
    Element Text Should Be    id=success_message    Thank you for your message!
    [Teardown]    Close Browser
