*** Settings ***
Resource            ../../../imports.robot

*** Keywords ***

Open SmartPay app android
         Open Application
            ...  ${address}
            ...  autoGrantPermissions=${auto_grant_permissions}
            ...  newCommandTimeout=${new_command_timeout}
            ...  noReset=${no_reset}
            ...  platformName=${platform_name_android}
            ...  platformVersion=${platform_version}
            ...  deviceName=${device_name}
            ...  app=${CURDIR}/../../..${app}
            ...  appPackage=${app_package}
            ...  appWaitActivity=${app_wait_activity}
            ...  udid=${udid}

Common - get pre_balance at home page
         Wait Until Element Is Visible          ${txt_view_balance}             ${min_time_out}
         Click Element           ${txt_view_balance}
         Wait Until Element Is Visible          ${txt_balance}              ${min_time_out}
         ${pre_balance}=       Get Text          ${txt_balance}
         ${balance}=    Remove String       ${pre_balance}       .
         Set Test Variable       ${pre_balance}              ${balance}
         [return]         ${pre_balance}

Common - input valid pin
        [Arguments]      ${pin}
         Wait Until Page Contains Element             ${txt_not_use_finger}           ${min_time_out}
         Click Element              ${txt_not_use_finger}
         Wait Until Page Contains Element              ${btn_1}
         ${count}=  Get Length        ${pin}
         FOR    ${i}     IN RANGE     ${count}
         ${num}=         get_pin        ${pin}    ${i}
         Click Element                 xpath=//android.view.ViewGroup[@content-desc="QC_btn_${num}"]
         END

Common - verify balance after transaction at home page
         ${result}=       Run Keyword And Return Status     Wait Until Element Is Visible      ${txt_view_balance}         ${retry_time}
         Run Keyword If  '${result}'=='True'
                         ...  Click Element            ${txt_view_balance}
         Wait Until Element Is Visible          ${txt_balance}              ${min_time_out}
         ${after_balance}=       Get Text          ${txt_balance}
         ${after_balance}=       Remove String       ${after_balance}       .
         ${result}         validate_balance_after_recharge        ${pre_balance}          ${after_balance}          ${real_amount}
         Should Be True     ${result}




