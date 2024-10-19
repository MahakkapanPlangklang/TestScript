*** Settings ***
Resource    ../pages/SignupPage.robot
Resource    ../pages/OTPPage.robot

*** Variables ***
${URL}    https://futureskill.co
${EMAIL}    testuser@example.com
${FIRST_NAME}    ชื่อทดสอบ
${LAST_NAME}    นามสกุลทดสอบ
${PHONE}    0812345678
${PASSWORD}    Test1234

*** Test Cases ***
Test User Signup Process
    # เปิดหน้า Signup และกรอกข้อมูล
    Open Signup Page    ${URL}
    Fill Signup Form    ${EMAIL}    ${FIRST_NAME}    ${LAST_NAME}    ${PHONE}    ${PASSWORD}
    
    # คลิกปุ่มสมัครสมาชิก
    Submit Signup
    
    # รอให้หน้ากรอก OTP โหลดขึ้นมาและตรวจสอบข้อความแจ้งเตือน
    Wait For OTP Page
    Verify OTP Message
    
    # Log ว่าการทดสอบสำเร็จ
    Log    หน้ากรอก OTP ขึ้นและแสดงข้อความ OTP ถูกต้อง
    
    # ปิดเบราว์เซอร์หลังจากการทดสอบ
    [Teardown]    Close Browser
