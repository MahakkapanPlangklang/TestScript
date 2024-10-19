*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNUP_BUTTON}    xpath=//button[contains(text(), "สมัครสมาชิก")]

*** Keywords ***
Open Signup Page
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window

Fill Signup Form
    [Arguments]    ${email}    ${first_name}    ${last_name}    ${phone}    ${password}
    Wait Until Element Is Visible    name=email    10s
    Input Text    name=email    ${email}
    Input Text    xpath=//input[@placeholder='ชื่อ']    ${first_name}
    Input Text    xpath=//input[@placeholder='นามสกุล']    ${last_name}
    Input Text    xpath=//input[@placeholder='เบอร์โทรศัพท์']    ${phone}
    Input Text    xpath=//input[@placeholder='รหัสผ่าน']    ${password}
    Input Text    xpath=//input[@placeholder='ยืนยันรหัสผ่าน']    ${password}

Submit Signup
    Click Element    ${SIGNUP_BUTTON}
