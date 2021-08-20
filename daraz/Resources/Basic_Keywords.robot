*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Variables.robot
*** Variables ***

*** Keywords ***
Start Web Test
    Open Browser  about:blank  ${BROWSER}
    #Open Browser  about:blank  gc
    Maximize Browser Window
End Web Test
    Close Browser