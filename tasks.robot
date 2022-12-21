*** Settings ***
Documentation       Template robot main suite.

Library             String
Library             RPA.Browser.Selenium
Library             RPA.FileSystem


*** Variables ***
${InputStringData}      List of value addition robot framework
${StartString}          List
${StringEnding}         framework


*** Tasks ***
StringBW Reusable
    Checking String Between data in Template InputString    ${InputStringData}    ${StartString}    ${StringEnding}


*** Keywords ***
Checking String Between data in Template InputString
    [Arguments]    ${InputStringData}    ${StartString}    ${StringEnding}
    ${content}=    Read File    C:${/}Users${/}kishore.yelikipati${/}Downloads${/}A_R Invoice - 97031.pdf.txt
    ${INVNumber}=    Should Match Regexp    ${content}    INV\\d+
    ${Invoice}=    Should Match Regexp    ${content}    .*(?=\s*INV\\d+)
    ${INVoiceNumber}=    Catenate    ${Invoice}    ${INVNumber}
    ${result}=    Should Match Regexp    ${content}    \\w{2}\\s\\w{3}\\d{5}
