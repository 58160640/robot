*** Settings ***
Library             SeleniumLibrary
Suite teardown      Close ALL Browsers

*** Test Cases ***
Check all required fields in registration form
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register       chrome
    Click Element       id=btn_submit
    Wait Until Page Contains        The Email field is required.
    Wait Until Page Contains        The Password field is required.
    Wait Until Page Contains        The Re-type Password field is required.
    Wait Until Page Contains        The Name field is required.

Register successfully when input valid data
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register       chrome
    Input Text      id=email        suphalerts@gmail.com
    Input Password  id=password     1111
    Input Password  id=repassword   1111
    Input Text      id=name         louis
    Click Element   id=btn_submit
    Wait Until Page Contains        suphalerts@gmail.com


