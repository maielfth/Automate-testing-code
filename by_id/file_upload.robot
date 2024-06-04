*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://example.com/upload
${BROWSER}        chrome
${FILE_PATH}      /path/to/your/file.txt

*** Test Cases ***
Upload File
    [Documentation]    Test to upload a file
    Open Browser    ${URL}    ${BROWSER}
    Choose File    id=file_input    ${FILE_PATH}
    Click Button    id=upload_button
    Wait Until Element Is Visible    id=upload_success    10s
    Element Text Should Be    id=upload_success    File uploaded successfully!
    [Teardown]    Close Browser
