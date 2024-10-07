*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library    json

*** Variables ***
${Profile_tab}    xpath=//XCUIElementTypeImage[@name="profile-unselected"]
${Email_Input_field}     xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextField
${Password_Input_field}    xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeSecureTextField
${Login_Button}    xpath=(//XCUIElementTypeButton[@name="Login"])[1]

#Signup
${Profilescreen_SignUp_Button}  xpath=//XCUIElementTypeStaticText[@name="Sign Up"]
#${SignUp_Screen}    xpath=(//XCUIElementTypeStaticText[@name="Sign Up"])[1]
${SignUp_Screen}   xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextField
${FirstName_Input_field}    xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeTextField
${LastName_Input_field}    xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeTextField
${SignupEmail_Input_field}    xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeTextField
${SignUpPassword_Input_field}    xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]/XCUIElementTypeSecureTextField
${SignUp_button}    xpath=//XCUIElementTypeButton[@name="Sign Up"]
${User_Profile}        xpath=//XCUIElementTypeButton[@name="Settings"]
${SignUp_ok}      xpath=//XCUIElementTypeButton[@name="Ok"]
${SignUp_modal}      xpath=//XCUIElementTypeButton[@name="Cancel"]

#Settings
${Settings}     xpath=//XCUIElementTypeButton[@name="Settings"]
${Logout}       xpath=//XCUIElementTypeButton[@name="Logout"]
${Logout_pop_up}     xpath=//XCUIElementTypeButton[@name="Yes"]


#Newsfeed
${Newsfeed}     xpath=//XCUIElementTypeTabBar[@name="Tab Bar"]/XCUIElementTypeButton[1]
${Logo_and_Quotes}       xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[13]/XCUIElementTypeOther[1]/XCUIElementTypeOther
${Donation_Entry}       xpath=//XCUIElementTypeApplication[@name="LaunchGood"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]/XCUIElementTypeOther[1]/XCUIElementTypeOther


#Dsicover
${Discover}     xpath=//XCUIElementTypeTabBar[@name="Tab Bar"]/XCUIElementTypeButton[2]

#Giving_List
${Giving_List}     xpath=//XCUIElementTypeTabBar[@name="Tab Bar"]/XCUIElementTypeButton[3]
${title}       xpath=(//XCUIElementTypeStaticText[@name="Schedule"])[1]








