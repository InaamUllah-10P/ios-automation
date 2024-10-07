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
    Open the LG application
    Sleep    2s

TestCase4: Open the Newsfeed screen
    Click Element     ${Newsfeed}
    Sleep    2s
TestCase5: Get Donations Count
    Sleep    3s
#    ${Logo_Visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Donation_Entry}
    ${Donor_feed}=    Run Keyword And Return Status    Page Should Contain Text    Donor Feed
    Run Keyword If    '${Donor_feed}' == 'True'   Log To Console    Newsfeed screen is opened successfully
    ...  ELSE   Log To Console  Newsfeed screen isn't opened.


