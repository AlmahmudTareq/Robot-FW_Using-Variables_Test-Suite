*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot
*** Variables ***

*** Keywords ***

Click Buy Now Button
    Click Button  ${BUY_NOW_BUTTON}
    Sleep  2s
Buy Product Page Load Verification
    Wait Until Page Contains  ${BUY_PRODUCT_PAGE_VERIFICATION_LOGIN-YES}
    Sleep  2s