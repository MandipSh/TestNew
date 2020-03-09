*** Settings ***


*** Variable ***
*** Test Cases ***
MyFirstTest
    Log    Hello World...  
    Log    Welcome to Robot Framework. 
    Log    Jenkins Trigger Test 2
    
#FirstSeleniumTest
    #Open Browser      https://google.com    googlechrome  
    #Selenium2Library.Input Text    name=q    testtest
    #Selenium2Library.Click Element    id=gsr
