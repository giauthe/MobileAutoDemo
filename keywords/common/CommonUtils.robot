*** Settings ***
Resource            ../../imports.robot

*** Keywords ***

Common - click element if element exit
        [Arguments]                ${element_to_click}
        ${result}=       Run Keyword And Return Status     Wait Until Element Is Visible      ${element_to_click}         ${retry_time}
        Run Keyword If  '${result}'=='True'
                         ...  Click Element             ${element_to_click}



