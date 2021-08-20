*** Settings ***
Documentation  This is a basic test of daraz bd to check different functionalities
Resource  ../Resources/Basic_Keywords.robot
Resource  ../Resources/Functional_Keywords.robot
Test Setup  Start Web Test
Test Teardown  End Web Test
#robot -d results tests/daraz_resources.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***

An user should be able to navigate to daraz home page
    Functional_Keywords.Navigate to home page

An user should be able to search for a product
    Functional_Keywords.Search for product

An user should be able to view the details of a product
    Functional_Keywords.Detailed view of a product

An user can add a product to cart without signing in
    Functional_Keywords.Verify product added to cart

An user can view a product in cart by signing in
    Functional_Keywords.View product in cart - sign in required

An user can buy product by signing in
    Functional_Keywords.Go to checkout - sign in required
