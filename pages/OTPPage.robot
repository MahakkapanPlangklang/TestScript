*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${OTP_FIELD}    xpath=//input[@name='otp']
${OTP_MESSAGE}    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์XX-XXXX-5678 หากไม่ได้รับสามารถกดขอรหัสใหม่

*** Keywords ***
Wait For OTP Page
    Wait Until Element Is Visible    ${OTP_FIELD}    20s

Verify OTP Message
    Wait Until Page Contains    ${OTP_MESSAGE}    10s
