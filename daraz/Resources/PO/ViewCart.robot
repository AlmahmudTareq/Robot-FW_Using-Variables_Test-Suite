*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot
*** Variables ***

*** Keywords ***

Add Product To Cart
    Click Button  ${GO_TO_CART_BUTTON}
    Sleep  2s
View Cart Page Load Verification
    Wait Until Page Contains  ${VIEW_FULL_CART_VERIFICATION_LOGIN-YES}
    Sleep  2s