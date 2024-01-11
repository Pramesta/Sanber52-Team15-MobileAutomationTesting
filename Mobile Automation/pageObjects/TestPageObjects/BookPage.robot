*** Settings ***
Resource            ../base/base.robot
Variables            Locators.yaml

*** Keywords ***
Choose From City in Book Page
    Wait Until Element Is Visible        ${FromCity_BookPage}
    Click Element                        ${FromCity_BookPage}
    Wait Until Element Is Visible        ${NewYork_FromCity_BookPage}
    Click Element                        ${NewYork_FromCity_BookPage}
Choose To City in Book Page
    Wait Until Element Is Visible        ${ToCity_BookPage}
    Click Element                        ${ToCity_BookPage}
    Wait Until Element Is Visible        ${Paris_ToCity_BookPage}
    Click Element                        ${Paris_ToCity_BookPage}    
Choose Class in Book Page
    Wait Until Element Is Visible        ${Class_BookPage}
    Click Element                        ${Class_BookPage}
    Wait Until Element Is Visible        ${Economy_Class_BookPage}
    Click Element                        ${Economy_Class_BookPage}
Choose Start Date in Book Page
    Click Element                        ${StartDate_BookPage}
    Wait Until Element Is Visible        ${8Agst_StartDate_BookPage}
    Click Element                        ${8Agst_StartDate_BookPage}
    Click Element                        ${OK_StartDate_BookPage}
Choose End Date in Book Page
    Click Element                        ${EndDate_BookPage}
    Wait Until Element Is Visible        ${10Agst_EndDate_BookPage}
    Click Element                        ${10Agst_EndDate_BookPage}
    Click Element                        ${OK_EndDate_BookPage}
Click Flight Option
    Click Element                        ${FlightOption_BookPage}              
Click Book Button 
    Click Element                        ${Book_Button_BookPage}