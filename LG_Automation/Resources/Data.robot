*** Settings ***
Library  AppiumLibrary
Library  Collections
Library  BuiltIn
Library  String
Library  DateTime
Library  Process
Library  JSONLibrary
Library  RequestsLibrary


*** Variables ***
${usernmae}        inaam2@gmail.com
${appiumServer1}    http://localhost:4723/wd/hub
${appiumServer2}    http://localhost:4724/wd/hub
${udid}            00008030-001E259922D8802E
${iPhone14_Simulator_UDID_1}    42FE0FAA-8CA6-405D-B5C7-78D6E49C2A95
${iPhone13_Simulator_UDID_1}    8814230E-A7CF-4D3B-94F7-0D280DECD3E9
${iPhone 14 Pro Max_Simulator_UDID_2}    49C579D1-7FB1-460E-BBF8-8855B28CFCC5
${iPhone 14 Pro_Simulator_UDID_3}    7BDFD3A4-32F1-4F55-9D28-6FA95BCC0986

${deviceName}       iPhone 11 Pro Max
${deviceName_iPhone14_1}       iPhone 14
${deviceName_iPhone14ProMax_2}       iPhone 14 Pro Max
${deviceName_iPhone13_Pro_Max}       iPhone 13 Pro Max
${deviceName_iPhone14Pro_3}       iPhone 14 Pro
${platformName}     iOS
${platformName_Simulator}     iOS
${platformVersion}  16.5
${platformVersion14}  16.2
${noReset}          true
${newCommandTimeout}    0
${automationName}   XCUITest
${adbExecTimeout}     900
#${uiautomator2ServerInstallTimeout}     10000
${app1}              /Users/muhammadinaam/Downloads/LaunchGood.app
${app}              /Users/muhammadinaam/Downloads/LaunchGood1.app
#${app1}            /Users/muhammadinaam/Downloads/Instagram_v293.1.ipa


*** Keywords ***
Open the LG application Real Device
    ${appium1}=     open application  ${appiumServer1}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}

Open the LG application Simulator1
    ${appium1}=     open application  ${appiumServer1}    udid=${iPhone13_Simulator_UDID_1}     deviceName=${deviceName_iPhone13_Pro_Max}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium1}

Open the LG application Simulator2
    ${appium2}=     open application  ${appiumServer1}    udid=${iPhone 14 Pro Max_Simulator_UDID_2}     deviceName=${deviceName_iPhone14ProMax_2}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium2}

Open the LG application Simulator3
    ${appium3}=     open application  ${appiumServer3}    udid=${iPhone 14 Pro_Simulator_UDID_3}     deviceName=${deviceName_iPhone14Pro_3}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium3}

Open Profile and verify the Login Flow
    Sleep    3s
#    Click Element    ${Profile_tab}