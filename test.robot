*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Browser
    open browser        https://rera.goa.gov.in/reraApp/        chrome
    maximize browser window

    click element    xpath://*[@id="Regtype"]/option[3]
    click element    xpath://*[@id="site-content"]/div[3]/div/div/div/div[1]/div/form/div[2]/span/button

    ${header}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[3]/div[2]/div/table/thead/tr
    log to console    ${header}

    :FOR    ${i}    IN RANGE    3    8
    \   ${content}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[${i}]/div[2]/div/table/tbody/tr
    \   log to console    ${content}
    click element    xpath://*[@id="site-content"]/div[2]/div/div[2]/div/ul/li[3]/a
    :FOR    ${j}    IN RANGE    3    8
    \   ${content1}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[${j}]/div[2]/div/table/tbody/tr
    \   log to console    ${content1}
    click element    xpath://*[@id="site-content"]/div[2]/div/div[2]/div/ul/li[4]/a
    :FOR    ${j}    IN RANGE    3    8
    \   ${content1}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[${j}]/div[2]/div/table/tbody/tr
    \   log to console    ${content1}
    click element    xpath://*[@id="site-content"]/div[2]/div/div[2]/div/ul/li[5]/a
    :FOR    ${j}    IN RANGE    3    8
    \   ${content1}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[${j}]/div[2]/div/table/tbody/tr
    \   log to console    ${content1}
    click element    xpath://*[@id="site-content"]/div[2]/div/div[2]/div/ul/li[6]/a
    :FOR    ${j}    IN RANGE    3    8
    \   ${content1}    get text    xpath://*[@id="site-content"]/div[2]/div/div[1]/div[${j}]/div[2]/div/table/tbody/tr
    \   log to console    ${content1}

    sleep    5
    close browser


*** Keywords ***
