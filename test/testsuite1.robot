*** Settings ***
Library  SeleniumLibrary

*** Variable ***
*** Test Cases ***
MyFirstTest
    Log    Hello World...  
    Log    Welcome to Robot Framework. 
    Log    Jenkins Trigger Test 2
    Log    Email Test 5.
    
FirstSeleniumTest
    Open Browser      https://egov.uscis.gov/casestatus/landing.do  ff  
    SeleniumLibrary.Input Text    id=receipt_number    LIN1923151093
    SeleniumLibrary.Click Element    name=initCaseSearch
    ${myText}    Get Text    xpath=/html/body/div[2]/form/div/div[1]/div/div/div[2]/div[3]/h1
    Log    ${myText}
    Run Keyword If    '${myText}'=='Request for Additional Evidence Was Sent'   Log    RFE    ELSE    Log    NoRFE
    Close All Browsers