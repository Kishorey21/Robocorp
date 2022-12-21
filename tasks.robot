*** Settings ***
Library     String


*** Variables ***
${InputStringData}      List of value addition robot framework
${StringAfter}          addition


*** Tasks ***
StringAfter Reusable
    Checking String After data in Template InputString    ${InputStringData}    ${StringAfter}


*** Keywords ***
Checking String After data in Template InputString
    [Arguments]    ${InputStringData}    ${BeforeString}
    ${result}=    Split String    ${InputStringData}    ${StringAfter}
    ${result}=    Set Variable    ${result}[1]
    ${result}=    Strip String    ${result}    both
