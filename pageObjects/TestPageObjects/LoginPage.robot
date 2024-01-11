*** Settings ***
Resource            ../base/base.robot
Variables            Locators.yaml

*** Keywords ***
Login Page Appears
    Wait Until Element Is Visible   ${Signin_Button_LoginPage}
Input Email in LoginPage
    [Arguments]                     ${email}
    Input Text                      ${InputEmail_LoginPage}     ${email}
Input Password in LoginPage
    [Arguments]                     ${Password}
    Input Password                  ${InputPassword_LoginPage}  ${Password}
Sign In Button in LoginPage
    Click Element                   ${Signin_Button_LoginPage}
Verify User Failed Logged In
    Wait Until Page Contains        Invalid username/password



