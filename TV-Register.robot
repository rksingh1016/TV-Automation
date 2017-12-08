*** Settings ***
Library           Selenium2Library

*** Variables ***
${Email}          rksinusa+test41@gmail.com
${Browser}        gc
${SiteUrl}        http://dcanalytics.staging.dcmn.lan/
${DashboardTitle}    DCMN TV Attribution Tool

*** Test Cases ***
Registration
    [Documentation]    This test cases registers a user in TV Attribution Tool.
    Open Browser to the Login Page
    Click Link
    Enter Email
    Click Button1
    Click Button2

*** Keywords ***
Open Browser to the Login Page
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click Link
    Click Element    //*[@id="content"]/div/div[2]/div[2]/div[1]/div[2]/span[2]/span

Enter Email
    Input Text    //input[@placeholder='Email']    ${Email}

Click Button1
    Click Element    //*[@id="content"]/div/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/button

Click Button2
    Click Element    //*[@id="content"]/div/div[2]/div[2]/div[1]/div[3]/button/div/span
