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
${Mi 11_UDID}    41ea8474
${Pixel_emulator_UDID}    emulator-5554
${platformName}     android
${platformName_emulator}     android
${platformVersion}  13
${platformVersion14}  16.2
${deviceName}     Mi 11
${noReset}          true
${newCommandTimeout}    0
${automationName}   UiAutomator2
${adbExecTimeout}     30000
${appPackage1}       com.airbnb.android
${appActivity1}      com.airbnb.android.activities.MainActivity
${uiautomator2ServerInstallTimeout1}     100000
${app}              /Users/muhammadinaam/Downloads/LaunchGood.app
${app1}             /Users/muhammadinaam/Downloads/Airbnb_23.46.1_Apkpure.apk
#${app1}             /Users/muhammadinaam/Downloads/Facebook_442.0.0.apk


*** Keywords ***
Open the LG application Real Device
    ${appium1}=     open application  ${appiumServer1}    udid=${udid}      deviceName=${deviceName}    platformName=${platformname}       platformVersion=${platformVersion}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}

Open the LG application Simulator1
    ${appium1}=     open application  ${appiumServer1}    udid=${iPhone14_Simulator_UDID_1}     deviceName=${deviceName_iPhone14_1}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium1}

Open the LG application Simulator2
    ${appium2}=     open application  ${appiumServer1}    udid=${iPhone 14 Pro Max_Simulator_UDID_2}     deviceName=${deviceName_iPhone14ProMax_2}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium2}

Open the LG application Simulator3
    ${appium3}=     open application  ${appiumServer3}    udid=${iPhone 14 Pro_Simulator_UDID_3}     deviceName=${deviceName_iPhone14Pro_3}    platformName=${platformName_Simulator}       platformVersion=${platformVersion14}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app}     noReset=${noReset}
    set global variable  ${appium3}

Open the Airbnb application
    ${appium}=     open application  ${appiumServer1}    udid=${Mi 11_UDID}     deviceName=${deviceName}   platformName=${platformName}      platformVersion=${platformVersion}  adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}       app=${app1}     noReset=${noReset}   adbExecTimeout=${adbExecTimeout}      newCommandTimeout=${newCommandTimeout}
    set global variable  ${appium3}
Open the Airbnb1 application

    ${appium}=     open application  ${appiumServer1}  AutomationName= ${automationName}     udid= ${Mi 11_UDID}      deviceName=${deviceName}   platformName=${platformName}      platformVersion=${platformVersion}   appPackage=${appPackage1}    appActivity=${appActivity1}     noReset=${noReset}  adbExecTimeout=${adbExecTimeout}   newCommandTimeout=${newCommandTimeout}

Open Profile and verify the Login Flow
    Sleep    3s
#    Click Element    ${Profile_tab}