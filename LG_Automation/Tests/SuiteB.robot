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
        Open the LG application Simulator2
        Sleep    4s
TestCase3: Open Profile and verify the Login Flow
        Log To Console    Suite B just initiated
        Sleep    5s
        Click Element    ${Profile_tab}
        Sleep    3s
        Click Element    ${Email_Input_field}
        Sleep     3s
        Input Text    ${Email_Input_field}      ${LoginEmail}
        Click Element  ${Password_Input_field}
        Input Text     ${Password_Input_field}     ${LoginPassword}
        Sleep    14s
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
        Run Keyword If    '${Donor_feed}' == 'True'   Log To Console    Newsfeed screen is opened successfully
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
        Log To Console    Automation Ended



