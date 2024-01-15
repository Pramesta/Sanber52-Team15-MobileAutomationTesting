*** Settings ***
Resource            ../base/base.robot
Variables            Locators.yaml

*** Keywords ***
Verify Home Page of Flight Application
    Wait Until Element Is Visible       ${logo_HomePage}
Sign In Button in Home Page
    Wait Until Element Is Visible       ${logo_HomePage}
    Click Element                       ${Signin_Button_HomePage} 
Verify User Logged In
    Wait Until Element Is Visible       ${Username_in_HomePage}
Verify Book Button Appears
    Wait Until Element Is Visible       ${Book_Button_HomePage}
Click Book Button in Home Page
    Click Element                       ${Book_Button_HomePage}