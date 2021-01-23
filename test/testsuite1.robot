*** Settings ***
Library  Selenium2Library
Library  OperatingSystem  
Library  G2  
Library  G1

*** Variable ***
*** Test Cases ***
MyFirstTest
    Log    Hello World...  
    Log    Welcome to Robot Framework. 
    Log    Jenkins Trigger Test 2
    Log    Email Test 5.
    Log  %{PATH} 
    G2.Greeting    Mandip
    ${user}    G1.Generate Name 
    Log    ${user} 
    
FirstSeleniumTest
    Append To Environment Variable    PATH    /Users/mandip/eclipse-workspace/RobotProject1/test/     
    Open Browser      https://google.com  chrome
    Close All Browsers
