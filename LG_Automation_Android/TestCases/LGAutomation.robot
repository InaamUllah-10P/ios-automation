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
    Open the Airbnb application
    Sleep    2s
