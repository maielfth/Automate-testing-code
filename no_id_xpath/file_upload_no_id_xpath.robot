*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/upload
${BROWSER}        chrome
${FILE_PATH}      /path/to/your/file.txt

*** Test Cases ***
Upload File
    [Documentation]    Test to upload a file using XPath without ID
    Open Browser    ${URL}    ${BROWSER}
    Choose File    xpath=//input[@type='file' and contains(@class, 'file-input')]    ${FILE_PATH}
    Click Button    xpath=//button[contains(text(), 'Upload')]
    Wait Until Element Is Visible    xpath=//div[contains(@class, 'upload-success')]    10s
    Element Text Should Be    xpath=//div[contains(@class, 'upload-success')]    File uploaded successfully!
    [Teardown]    Close Browser
