*** Settings ***
Resource            ../base/base.robot
Variables            Locators.yaml

*** Keywords ***
Click Confirmation Price
    Wait Until Page Contains Element     ${ConfirmationBookPage}
    Click Element                        ${Price_Button}
    Click Element                        ${Confirmation_Button}
Verify Booking Process Success
    Wait Until Element Is Visible        ${ConfirmationMessage}    