*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/upload
${BROWSER}        chrome
${FILE_PATH}      /path/to/your/file.txt

*** Test Cases ***
Upload File
    [Documentation]    Test to upload a file using XPath
    Open Browser    ${URL}    ${BROWSER}
    Choose File    xpath=//input[@id='file_input']    ${FILE_PATH}
    Click Button    xpath=//button[@id='upload_button']
    Wait Until Element Is Visible    xpath=//div[@id='upload_success']    10s
    Element Text Should Be    xpath=//div[@id='upload_success']    File uploaded successfully!
    [Teardown]    Close Browser
