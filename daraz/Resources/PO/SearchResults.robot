*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot

*** Keywords ***
Verify Search Compilation
    Sleep  2s
    Wait Until Page Contains  ${SEARCH-RESULT_VERIFICATION_TEXT}
    Sleep  1s

Click Product
    [Documentation]  Clicks the first searched product on the page
    Sleep  2s
    Click Link  ${FIRST_SEARCHED_ITEM_ON_PAGE}
    #Click Link  xpath=//*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[2]/div[2]/a