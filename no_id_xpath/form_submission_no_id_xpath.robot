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
    [Documentation]    Test to fill out and submit the contact form using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@name='name']    ${NAME}
    Input Text    xpath=//input[@name='email']    ${EMAIL}
    Input Text    xpath=//textarea[@name='message']    ${MESSAGE}
    Click Button    xpath=//button[contains(text(), 'Submit')]
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'success-message')]    10s
    Element Text Should Be    xpath=//div[contains(@class, 'success-message')]    Thank you for your message!
    [Teardown]    Close Browser
