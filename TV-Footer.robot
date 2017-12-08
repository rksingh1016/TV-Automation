*** Settings ***
Library           Selenium2Library

*** Variables ***
${Browser}        gc
${SiteUrl}        http://dcanalytics.staging.dcmn.lan/
${DashboardTitle}    DCMN TV Attribution Tool
${Name}           Rakesh Kumar Singh
${Email}          r.singh@dcmn.com
${Comment}        This is a test

*** Test Cases ***
Footer
    [Documentation]    This test case checks Footer links in TV dashboard.
    Open Browser to the Login Page
    Click Contact Us
    Input Contact Name
    Input Contact Email
    Click Checkbox

*** Keywords ***
Open Browser to the Login Page
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click Contact Us
    Click Element    //*[@id="content"]/div/div[2]/div[2]/div[2]/div[2]/span[1]/span/span

Input Contact Name
    Input Text    //input[@placeholder='Name']    ${Name}

Input Contact Email
    Input Text    //input[@placeholder='Email']    ${Email}

Click Checkbox
    Select Checkbox    id='recaptcha-anchor'
