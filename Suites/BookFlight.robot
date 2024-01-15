*** Settings ***
Resource         ../pageObjects/TestPageObjects/HomePage.robot
Resource         ../pageObjects/TestPageObjects/BookPage.robot
Resource         ../pageObjects/TestPageObjects/LoginPage.robot
Resource         ../pageObjects/TestPageObjects/LoginCommand.Robot
Test Setup       Open Flight Application
Test Teardown    Close Flight Application

*** Variables ***
${VALID_EMAIL}          support@ngendigital.com
${VALID_PASSWORD}       abc123
${INVALID_EMAIL}        Invalid
${INVALID_PASSWORD}     Invalid

*** Test Cases ***
Valid Book 
    Verify Home Page of Flight Application
    Sign In Button in Home Page
    Login Page Appears
    Input Email in LoginPage        ${VALID_EMAIL} 
    Input Password in LoginPage     ${VALID_PASSWORD}
    Sign In Button in LoginPage
    Verify User Logged In
    Click Book Button in Home Page
    Choose From City in Book Page
    Choose To City in Book Page
    Choose Class in Book Page
    Choose Start Date in Book Page
    Choose End Date in Book Page
    Click Flight Option
    Click Book Button
    Click Confirmation Price
    Verify Booking Process Success
    