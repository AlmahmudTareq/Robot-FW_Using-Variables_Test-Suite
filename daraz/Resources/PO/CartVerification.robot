*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot
*** Variables ***

*** Keywords ***

Add Product To Cart
    #Click Element  xpath=//*button[contains(text(),"Add to Cart")]
    Click Button  ${BUTTON_ADD_TO_CART}

Page Load Verification
    Sleep  2s
    Wait Until Page Contains  ${CART_PAGE_LOAD_VERIFICATION_LOGIN-NO}

Login Form Fillup
    Sleep  2s
    Input Text  ${LOGIN_TEXT_BOX}  ${D_UN}   #Username Field
    Input Text  ${LOGIN_PASS_BOX}  ${D_PASS}   #Password Field
    Sleep  2s
    Click Button  ${LOGIN_BUTTON}

Cart Page Load Verification
    Wait Until Page Contains  ${CART_PAGE_LOAD_VERIFICATION_LOGIN-YES}
    Sleep  2s
