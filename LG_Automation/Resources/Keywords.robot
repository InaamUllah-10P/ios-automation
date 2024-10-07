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

#Variables   ../Variables/Variables.robot

*** Keywords ***
Get the Total Count of the donations Newsfeed
#    ${total_count_of_Donations}=      get matching xpath count   xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeOther
    ${total_count_of_Donations_old_UI}=      get matching xpath count   xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell/XCUIElementTypeOther[1]/XCUIElementTypeOther
    ${total_count_of_Donations}=      get matching xpath count   xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell
    log to console  Current count of donations=${total_count_of_Donations}
    set global variable  ${total_count_of_Donations}