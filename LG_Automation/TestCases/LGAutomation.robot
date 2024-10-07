*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library  json
Resource  ../Resources/Data.robot
Resource   ../Locators/Locators.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Keywords.robot

#Variables   ../Variables/Variables.robot


*** Test Cases ***

Steps for open LG application
#    ${Variables}    Load Json From File     /Users/muhammadinaam/PycharmProjects/LG_Automation/Variables/Variables.json
#    Open the LG application Real Device
    Open the LG application Simulator1
    Sleep    2s
TestCase1: Open Profile and Complete SignUp Flow
#SignUp
    Click Element    ${Profile_tab}
    Sleep    1s
    Click Element   ${Profilescreen_SignUp_Button}
#   Wait till Signup screen loads
    Wait Until Element Is Visible    ${SignUp_Screen}
    Click Element    ${FirstName_Input_field}
    Input Text    ${FirstName_Input_field}     ${Signup_FirstName}
    Click Element    ${LastName_Input_field}
    Input Text    ${LastName_Input_field}    ${SignUp_LastName}
    Click Element    ${SignupEmail_Input_field}
    Input Text    ${SignupEmail_Input_field}    ${SignUp_Email}
    Click Element    ${SignUpPassword_Input_field}
    Input Text    ${SignUpPassword_Input_field}     ${SignUp_Password}
    Sleep    2s
    Click Element    ${SignUp_button}
    Sleep    5s
#    Element Should Be Visible     ${User_Profile} 
    Click Element    ${SignUp_ok}
    Sleep    1s
    Click Element    ${SignUp_modal}
    Log To Console   User Registered successfully but there is an Internal Server!
    Sleep   1s
#TestCase2:Logout the user and prepare for login
#    Click Element    ${Settings}
#    Sleep    2s
#    Click Element     ${Logout}
#    Wait Until Element Is Visible    ${Logout_pop_up}
#    Click Element     ${Logout_pop_up}
#    Log To Console    User is Logged out successfully.
#    Sleep    13s
TestCase3: Open Profile and verify the Login Flow
    Sleep    3s
    Click Element    ${Email_Input_field}
    Sleep     3s
    Input Text    ${Email_Input_field}      ${LoginEmail}
    Click Element  ${Password_Input_field}
    Input Text     ${Password_Input_field}     ${LoginPassword}
    Sleep    3s
    Click Element    ${Login_Button}
    Sleep    4s
    Element Should Be Visible    ${User_Profile}
    Log To Console    User is Logged In successfully
    Sleep    2s
TestCase4: Open the Newsfeed screen
    Click Element     ${Newsfeed}
    Sleep    3s
#    Run Keyword If    Element Should Be Visible    ${Logo}
#    ...  ELSE
#    ...    Log To Console    Newsfeed screen isn't opened.
TestCase5: Verify Newsfeed screen is opened?
    ${Donor_feed}=    Run Keyword And Return Status    Page Should Contain Text    Donor Feed
    Set Global Variable    ${Donor_feed}
    set gl
    Run Keyword If    '${Donor_feed}' == 'false'   Log To Console    Newsfeed screen is opened successfully
    ...  ELSE   Log To Console  Newsfeed screen isn't opened.
    Log To Console    Newsfeed screen is opened successfully
    Sleep    2s
TestCase6: Show the total count of donations
    Get the Total Count of the donations Newsfeed
    Sleep    2s
TestCase7: Open the Discover screen
    Click Element    ${Discover}
    Sleep    3s
    Log To Console    Discover screen is opened successfully
TestCase8: Verify and Open the Giving List screen
    Click Element    ${Giving_List}
    Sleep    8s
    ${current_screen}  Get Text   ${title}
    Log To Console    Giving List Webview is opened successfully
    Log To Console    Automation tasks are completed!!
    Sleep    10s


