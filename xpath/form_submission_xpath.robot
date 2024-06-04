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
    [Documentation]    Test to fill out and submit the contact form using XPath
    Open Browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@id='name']    ${NAME}
    Input Text    xpath=//input[@id='email']    ${EMAIL}
    Input Text    xpath=//textarea[@id='message']    ${MESSAGE}
    Click Button    xpath=//button[@id='submit_button']
    Wait Until Element Is Visible    xpath=//div[@id='success_message']    10s
    Element Text Should Be    xpath=//div[@id='success_message']    Thank you for your message!
    [Teardown]    Close Browser
