*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot

*** Variables ***

*** Keywords ***

Navigate To Page
    Go To  ${URL}
    #Go To  http://www.daraz.com.bd/


Page Load Verification
    Sleep  2s
    Wait Until Page Contains  SAVE MORE ON APP