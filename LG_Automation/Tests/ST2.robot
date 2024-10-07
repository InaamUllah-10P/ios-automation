*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library  json
Library    OperatingSystem
#Library    Lock
#Library  pabot.PabotLib
Resource   ../Resources/Data.robot
Resource   ../Locators/Locators.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Keywords.robot




*** Keywords ***

*** Test Cases ***
#    Acquire Lock   MyLock
#    ac
    Log   This part is critical section
Steps for open LG application
#    ${Variables}    Load Json From File     /Users/muhammadinaam/PycharmProjects/LG_Automation/Variables/Variables.json
#    Open the LG application Real Device
    Open the LG application Simulator2
    Sleep    4s
#TestCase1: Open Profile and Complete SignUp Flow
##SignUp
#    Log To Console    Suite A just initiated
#    Sleep    10s
##    Click Element     ${Profile_tab}
##    Sleep    3s
#    Log To Console    Profile Opened
#    Click Element   ${Profilescreen_SignUp_Button}
##   Wait till Signup screen loads
#    Wait Until Element Is Visible    ${SignUp_Screen}
#    Click Element    ${FirstName_Input_field}
#    Input Text    ${FirstName_Input_field}     ${Signup_FirstName}
#    Click Element    ${LastName_Input_field}
#    Input Text    ${LastName_Input_field}    ${SignUp_LastName}
#    Click Element    ${SignupEmail_Input_field}
#    Input Text    ${SignupEmail_Input_field}    ${SignUp_Email}
#    Click Element    ${SignUpPassword_Input_field}
#    Input Text    ${SignUpPassword_Input_field}     ${SignUp_Password}
#    Sleep    2s
#    Click Element    ${SignUp_button}
#    Sleep    5s
##    Element Should Be Visible     ${User_Profile}
#    Log To Console   User Registered successfully!
##    Release Lock   MyLock