*** Settings ***
Library           Selenium2Library

*** Variables ***
${Username}       r.singh@dcmn.com
${Password}       india123
${Browser}        gc
${SiteUrl}        http://dcanalytics.staging.dcmn.lan/
${DashboardTitle}    DCMN TV Attribution Tool

*** Test Cases ***
Login
    [Documentation]    This test case checks Login in TV dashboard.
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login

*** Keywords ***
Open Browser to the Login Page
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter User Name
    Input Text    //input[@placeholder='Email']    ${Username}

Enter Password
    Input Text    //input[@placeholder='Password']    ${Password}

Click Login
    Click Element    //*[@id="content"]/div/div[2]/div[2]/div[1]/form/button

Click Menu
    Click Element    //*[@id="content"]/div/div[2]/div[1]/div[2]/div[4]/div[1]

Assert Dashboard Title
    Title Should be    ${DashboardTitle}
