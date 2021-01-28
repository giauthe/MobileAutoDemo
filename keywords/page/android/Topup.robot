*** Settings ***
Resource            ../../../imports.robot

*** Keywords ***
Topup - Select topup function
        Wait Until Element Is Visible            ${txt_topup}              ${min_time_out}
        Click Element           ${txt_topup}

Topup - Input phone number
        [Arguments]            ${phone}
        Wait Until Element Is Visible            ${txt_title_phone}                ${min_time_out}
        Click Element       ${txt_advance_payment}
        Click Element       ${btn_name_or_phone}
        Wait Until Element Is Visible           ${ipt_name_or_phone}                ${min_time_out}
        Input Text           ${ipt_name_or_phone}               ${phone}
        Hide Keyboard
        Click Element        xpath=//android.view.ViewGroup[@content-desc="QC_item_${phone}"]

Topup - Input amount and supplier
        [Arguments]            ${ltc_supplier}           ${lct_amount}
        Wait Until Element Is Visible         ${btn_viettel}               ${min_time_out}
        Page Should Contain Element           ${btn_mobifone}
        Page Should Contain Element           ${btn_vinaphone}
        Page Should Contain Element           ${btn_gmobile}
        Page Should Contain Element           ${btn_vietnamobile}
        Click Element       ${ltc_supplier}
        Click Element       ${lct_amount}
        Click Element       ${btn_continue}

Topup - verify confirmation screen
        Wait Until Element Is Visible         ${txt_title_topup}                ${min_time_out}
        Page Should Contain Element           ${txt_account_wallet}
        Page Should Contain Element           ${img_smartpay}
        Page Should Contain Element           ${txt_balance_at_confirmation}
        ${balance}=       Get Text            ${txt_balance_at_confirmation}
        ${balance}=       Remove String       ${balance}       .       đ
        Should Be Equal         ${balance}      ${pre_balance}
        Page Should Contain Element           ${txt_account_wallet}

        Page Should Contain Element           ${txt_gift_card}
        Click Element       ${txt_gift_card}
        Wait Until Element Is Visible         ${txt_gift_card_not_applied}                ${min_time_out}
        Page Should Contain Element           ${txt_gift_card_image}
        ${gift_card_name}=    Get Text          ${txt_gift_card_name}
        log          ${gift_card_name}
        Page Should Contain Element           ${txt_gift_card_using_condition}
        ${gift_card_using_condition}=    Get Text          ${txt_gift_card_using_condition}
        Should Be Equal         ${gift_card_using_condition}         ${gift_using_condition}
        ${gift_card_expired_time}=    Get Text          ${txt_gift_card_expired_time}
        log          ${gift_card_expired_time}
        Go Back

        Page Should Contain Element           ${txt_amount}
        Page Should Contain Element           ${ic_person}
        Page Should Contain Element           ${txt_phone_number}
        Page Should Contain Element           ${txt_phone_value}

        Page Should Contain Element           ${txt_fee}
        Page Should Contain Element           ${txt_free}
        Page Should Contain Element           ${txt_discount}
        Page Should Contain Element           ${txt_discount_amount}
        Page Should Contain Element           ${txt_give_for}
        Page Should Contain Element           ${txt_real_payment}
        Page Should Contain Element           ${txt_real_payment_amount}
        ${real_amount}=       Get Text              ${txt_real_payment_amount}
        ${real_amount}=       Remove String         ${real_amount}       .       đ
        Set Test Variable       ${real_amount}            ${real_amount}

Topup - click button confirm
        Click Element            ${txt_confirm}

Topup - verify result screen
        Wait Until Element Is Visible         ${txt_success_transaction}                  ${min_time_out}
        Page Should Contain Element           ${ic_success}
        Page Should Contain Element           ${txt_success_message}
        Page Should Contain Element           ${txt_trans_detail}
        Page Should Contain Element           ${txt_back_to_wallet}

Topup - verify detail screen
        [Arguments]           ${supplier}               ${supplier_slogan}
        Click Element         ${txt_trans_detail}
        Wait Until Element Is Visible         ${txt_transaction_to}                 ${min_time_out}
        Page Should Contain Element           ${ic_question}
        Page Should Contain Element           ${txt_trans_detail}
        Page Should Contain Element           ${supplier}
        Page Should Contain Element           ${supplier_slogan}
        Page Should Contain Element           ${txt_trans_id}
        Page Should Contain Element           ${txt_trans_id_number}
        Page Should Contain Element           ${txt_time}
        Page Should Contain Element           ${txt_time_value}
        Page Should Contain Element           ${txt_money_source}
        Page Should Contain Element           ${txt_money_source_name}
        Page Should Contain Element           ${txt_discount}
        Page Should Contain Element           ${txt_discount_amount_detail}
        Page Should Contain Element           ${txt_real_payment}
        Page Should Contain Element           ${txt_real_payment_amount}
        ${amount}=       Get Text             ${txt_real_payment_amount}
        ${amount}=       Remove String        ${real_amount}       .       đ
        Should Be Equal         ${amount}     ${real_amount}

Topup - back to home
        Common - Click element if element exit      ${btn_back}
        Go Back
