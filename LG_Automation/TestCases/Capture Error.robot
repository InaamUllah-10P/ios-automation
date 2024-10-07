*** Settings ***
Library  json
Resource  ../Resources/Data.robot
Resource   ../Locators/Locators.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Keywords.robot

#Variables   ../Variables/Variables.robot
Library    AppiumLibrary

*** Variables ***
${DEVICE_NAME}       iPhone
${PLATFORM_VERSION}  14.0
${APP_PATH}          /path/to/your/app/YourApp.app
${BUNDLE_ID}         com.your.app

*** Test Cases ***

Steps for open LG application
    Open the LG application Simulator
    Sleep    2s
    # Perform your test steps here, interacting with the app
    Click Element       xpath=//XCUIElementTypeButton[@name="Submit"]
    Input Text          xpath=//XCUIElementTypeTextField[@name="Username"]    TestUser
    Input Text          xpath=//XCUIElementTypeSecureTextField[@name="Password"]    TestPassword
    Click Element       xpath=//XCUIElementTypeButton[@name="Login"]
    # Check for errors or exceptions
    Run Keyword And Continue On Failure    Capture Appium Error
    # Continue with other test steps
    Click Element       xpath=//XCUIElementTypeButton[@name="Logout"]
*** Keywords ***
Capture Appium Error
    ${error_message}    Run Keyword And Ignore Error    Capture Page Screenshot
    Run Keyword And Ignore Error    Capture Appium Log
    Run Keyword And Ignore Error    Log Appium Server Messages
    Run Keyword And Ignore Error    Log Source



    Run Keyword And Ignore Error    Capture Appium Screenshot
    Run Keyword And Ignore Error    Log Appium API Messages
    Log    Appium Error: ${error_message}