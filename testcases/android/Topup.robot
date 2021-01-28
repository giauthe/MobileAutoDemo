*** Settings ***
Resource             ../../imports.robot
Library              DataDriver     ../../testdata/TopupData/topup_data.xlsx   sheet_name=Sheet1
#Suite Setup          Open SmartPay app
Test Setup           run keywords
                        ...  Open SmartPay app android
                        ...  Login Success
                        ...  Common - get pre_balance at home page
Suite Teardown      Close Application
Test Template       Topup success


*** Keywords ***
Topup success
    [Arguments]         ${phone}     ${ltc_supplier}    ${lct_amount}      ${supplier}      ${supplier_slogan}
    Topup - select topup function
    Topup - input phone number       ${phone}
    Topup - input amount and supplier           ${ltc_supplier}              ${lct_amount}
    Topup - verify confirmation screen
    Topup - click button confirm
    Common - input valid pin        ${valid_pin}
    Topup - verify result screen
    Topup - verify detail screen        ${supplier}              ${supplier_slogan}
    Topup - back to home
    Common - verify balance after transaction at home page


*** Test Cases ***
TC - ${tcname}
#    [Tags]      Topup       Regression
    log to console           ${tcname}



#tc1 - Topup vinaphone successfull
#    [Tags]      Topup    Regression
#    Topup - Select topup function
#    Topup - Input phone number       0937292743
#    Topup - Input amount and supplier           ${btn_vinaphone}             ${btn_ten_thousand}
#    Topup - verify confirmation screen
#    Topup - click button confirm
#    Common - input valid pin        ${valid_pin}
#    Topup - verify result screen
#    Topup - verify detail screen        ${txt_vinaphone}             ${txt_vinaphone_slogan}
#    Topup - back to home
#    Common - verify balance after transaction at home page
