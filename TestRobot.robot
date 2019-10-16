*** Settings ***
Library           Selenium2Library

*** Variables ***
${LoginEmail.id}    id=email
${LoginPassword.id}    id=pass
${LoginButton.css}    css=#loginbutton
${SearchTextArea.css}    css=._1frb
${SearchButton.css}    css=button._42ft:nth-child(1)
${Forget.xpath}    xpath=/html/body/div[1]/div[2]/div/div/div/div/div[2]/form/table/tbody/tr[3]/td[2]/div/a
${InputEmailAtauNomor.id}    id=identify_email
${CariBtn.xpath}    xpath=//*[@id="did_submit"]

*** Test Cases ***
TC1_1_Login
    [Documentation]    Login Facebook
    Open Browser    https://www.facebook.com/login.php    ff
    Input Text    ${LoginEmail.id}    jualanpanca@gmail.com
    Input Text    ${LoginPassword.id}    my world
    Click Element    ${LoginButton.css}

TC1_2_Login
    Open Browser    https://www.facebook.com/login.php    ff
    Input Text    ${LoginEmail.id}    jualanpanca@gmail.com
    Input Text    ${LoginPassword.id}    Pass salah
    Click Element    ${LoginButton.css}

TC1_3_Login
    Open Browser    https://www.facebook.com/login.php    ff
    Input Text    ${LoginEmail.id}    Akun salah
    Input Text    ${LoginPassword.id}    Pass salah
    Click Element    ${LoginButton.css}

TC2_1_Search
    [Documentation]    Search People
    Input Text    ${SearchTextArea.css}    dhbnacjszkhdnoiakjsd
    Click Element    ${SearchButton.css}

TC2_2_Search
    Input Text    ${SearchTextArea.css}    wira pakpahan
    Click Element    ${SearchButton.css}

TC3_1_LupaAkun
    Open Browser    https://www.facebook.com    ff
    Click Element    ${Forget.xpath}
    Input Text    ${InputEmailAtauNomor.id}    081234568763
    Click Element    ${CariBtn.xpath}

TC3_2_LupaAkun
    Open Browser    https://www.facebook.com    ff
    Click Element    ${Forget.xpath}
    Input Text    ${InputEmailAtauNomor.id}    jualanpanca@gmail.com
    Click Element    ${CariBtn.xpath}
