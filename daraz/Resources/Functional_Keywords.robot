*** Settings ***

#Library  SeleniumLibrary
Resource  ../Resources/PO/OpenPage.robot
Resource  ../Resources/PO/SearchProduct.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/CartVerification.robot
Resource  ../Resources/PO/BuyNow.robot
Resource  ../Resources/PO/ViewCart.robot

*** Keywords ***

Navigate to home page
    OpenPage.Navigate To Page
    OpenPage.Page Load Verification

Search for product
    Navigate to home page
    SearchProduct.Enter Product Name
    SearchProduct.Submit Search
    SearchProduct.Scroll Page

Detailed view of a product
    Search for product
    SearchResults.Verify Search Compilation
    SearchResults.Click Product

Verify product added to cart
    Detailed view of a product
    CartVerification.Add Product To Cart
    CartVerification.Page Load Verification

View product in cart - sign in required
    Verify product added to cart
    CartVerification.Login Form Fillup
    CartVerification.Cart Page Load Verification

Go to checkout - sign in required
    Detailed view of a product
    BuyNow.Click Buy Now Button
    CartVerification.Login Form Fillup
    BuyNow.Buy Product Page Load Verification
