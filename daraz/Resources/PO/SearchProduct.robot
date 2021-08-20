*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot

*** Keywords ***

Enter Product Name
    Input Text  ${SEARCH_BOX}  ${SEARCH_ITEM}

Submit Search
    Click Button  ${SEARCH_BUTTON}

Scroll Page
    Sleep  1s
    #Execute JavaScript    window.scrollTo(0,600)
    #Execute JavaScript    window.scrollTo(0,120)
    #Sleep  1s