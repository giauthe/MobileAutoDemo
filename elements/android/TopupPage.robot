*** Variables ***

#input information screen
${txt_title_phone}                                 xpath=//android.widget.TextView[@text="Điện thoại"]
${txt_advance_payment}                             xpath=//android.widget.TextView[@text="Trả trước"]
${txt_deferred_payment}                            xpath=//android.widget.TextView[@text="Trả sau"]
${txt_card_code}                                   xpath=//android.widget.TextView[@text="Mã thẻ"]
${btn_name_or_phone}                               xpath=//android.view.ViewGroup[@content-desc="QC_btn_name_or_phone"]
${ipt_name_or_phone}                               xpath=//android.widget.EditText[@content-desc="QC_input_name_or_phone"]

${btn_viettel}                                     xpath=//android.view.ViewGroup[@content-desc="QC_btn_Viettel"]
${btn_mobifone}                                    xpath=//android.view.ViewGroup[@content-desc="QC_btn_Mobifone"]
${btn_vinaphone}                                   xpath=//android.view.ViewGroup[@content-desc="QC_btn_Vinaphone"]
${btn_gmobile}                                     xpath=//android.view.ViewGroup[@content-desc="QC_btn_Gmobile"]
${btn_vietnamobile}                                xpath=//android.view.ViewGroup[@content-desc="QC_btn_Vietnamobile"]

${btn_ten_thousand}                                xpath=//android.view.ViewGroup[@content-desc="QC_btn_10000"]
${btn_twenty_thousand}                             xpath=//android.view.ViewGroup[@content-desc="QC_btn_20000"]
${btn_thirty_thousand}                             xpath=//android.view.ViewGroup[@content-desc="QC_btn_30000"]
${btn_fifty_thousand}                              xpath=//android.view.ViewGroup[@content-desc="QC_btn_50000"]
${btn_one_hundred_thousand}                        xpath=//android.view.ViewGroup[@content-desc="QC_btn_100000"]
${btn_two_hundred_thousand}                        xpath=//android.view.ViewGroup[@content-desc="QC_btn_200000"]
${btn_three_hundred_thousand}                      xpath=//android.view.ViewGroup[@content-desc="QC_btn_300000"]
${btn_five_hundred_thousand}                       xpath=//android.view.ViewGroup[@content-desc="QC_btn_500000"]

#confirmation screen
${txt_title_topup}                                 xpath=//android.widget.TextView[@text="Nạp tiền điện thoại"]
${txt_account_wallet}                              xpath=//android.widget.TextView[@text="TK Ví"]
${img_smartpay}                                    xpath=//android.widget.TextView[@text="TK Ví"]/preceding-sibling::android.widget.ImageView[1]
${txt_balance_at_confirmation}                     xpath=//android.widget.TextView[@text="TK Ví"]/preceding-sibling::android.widget.TextView
${txt_account_wallet}                              xpath=//android.widget.TextView[@text="TK Ví"]/preceding-sibling::android.widget.ImageView[2]

${txt_give_for}                                    xpath=//android.widget.TextView[@text="Nạp cho"]
${txt_amount}                                      xpath=//android.view.ViewGroup[@content-desc="QC_item_0937292743"]/preceding-sibling::android.widget.TextView
${ic_person}                                       xpath=//android.view.ViewGroup[@content-desc="QC_item_0937292743"]/android.widget.ImageView
${txt_phone_number}                                xpath=//android.view.ViewGroup[@content-desc="QC_item_0937292743"]/android.widget.TextView[@text="Số điện thoại"]
${txt_phone_value}                                 xpath=//android.view.ViewGroup[@content-desc="QC_item_0937292743"]/android.widget.TextView[@text="0937292743"]

${txt_fee}                                          xpath=//android.widget.TextView[@text="Phí"]
${txt_free}                                         xpath=//android.widget.TextView[@text="Miễn phí"]
${txt_discount}                                     xpath=//android.widget.TextView[@text="Chiết khấu"]
${txt_discount_amount}                              xpath=//android.widget.TextView[@text="Chiết khấu"]/parent::android.view.ViewGroup/following-sibling::android.view.ViewGroup[1]/android.widget.TextView

${txt_gift_card}                                    xpath=//android.widget.TextView[@text="Thẻ quà tặng"]
${txt_real_payment}                                 xpath=//android.widget.TextView[@text="Tiền thực trả"]
${txt_real_payment_amount}                          xpath=//android.widget.TextView[@text="Tiền thực trả"]/following-sibling::android.widget.TextView[1]

#gift card
${txt_gift_card_not_applied}                        xpath=//android.widget.TextView[@text="Thẻ quà tặng không áp dụng"]
${txt_gift_card_image}                              xpath=//android.widget.TextView[@text="Thẻ quà tặng không áp dụng"]/following-sibling::android.view.ViewGroup[1]/android.widget.ImageView[2]
${txt_gift_card_name}                               xpath=//android.widget.TextView[@text="Thẻ quà tặng không áp dụng"]/following-sibling::android.view.ViewGroup[1]/android.widget.TextView[1]
${txt_gift_card_using_condition}                    xpath=//android.widget.TextView[@text="Thẻ quà tặng không áp dụng"]/following-sibling::android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.TextView
${txt_gift_card_expired_time}                       xpath=//android.widget.TextView[@text="Thẻ quà tặng không áp dụng"]/following-sibling::android.view.ViewGroup[1]/android.view.ViewGroup[3]/android.widget.TextView
${txt_apply}                                        xpath=//android.widget.TextView[@text="Áp dụng"]

#result screen
${ic_success}                                       xpath=//android.widget.TextView[@text="Giao dịch thành công"]/preceding-sibling::android.widget.ImageView
${txt_success_transaction}                          xpath=//android.widget.TextView[@text="Giao dịch thành công"]
${txt_success_message}                              xpath=//android.widget.TextView[@text="Giao dịch thành công"]/following-sibling::android.widget.TextView
${txt_trans_detail}                                 xpath=//android.widget.TextView[@text="Chi tiết giao dịch"]
${txt_back_to_wallet}                               xpath=//android.widget.TextView[@text="Trở về Ví"]

#detail screen
${ic_question}                                      xpath=//android.view.ViewGroup[@content-desc="QC_btn_header_left"]/following-sibling::android.view.ViewGroup[1]
${txt_transaction_to}                               xpath=//android.widget.TextView[@text="Chuyển đến"]
${txt_amount_detail}                                xpath=//android.widget.TextView[@text="Chuyển đến"]/parent::android.view.ViewGroup/preceding-sibling::android.widget.TextView[1]
${ic_supplier}                                      xpath=//android.widget.TextView[@text="Chuyển đến"]/following-sibling::android.widget.ImageView

${txt_vinaphone}                                    xpath=//android.widget.TextView[@text="Vinaphone"]
${txt_vinaphone_slogan}                             xpath=//android.widget.TextView[@text="Hiện đại hơn, Năng động hơn"]
${txt_mobifone}                                     xpath=//android.widget.TextView[@text="Mobifone"]
${txt_mobifone_slogan}                              xpath=//android.widget.TextView[@text="Kết nối giá trị - Khơi dậy tiềm năng"]

${txt_trans_id}                                     xpath=//android.widget.TextView[@text="Mã giao dịch"]
${txt_trans_id_number}                              xpath=//android.widget.TextView[@text="Mã giao dịch"]/following-sibling::android.widget.TextView[1]
${txt_time}                                         xpath=//android.widget.TextView[@text="Thời gian"]
${txt_time_value}                                   xpath=//android.widget.TextView[@text="Thời gian"]/following-sibling::android.widget.TextView[1]
${txt_money_source}                                 xpath=//android.widget.TextView[@text="Nguồn tiền"]
${txt_money_source_name}                            xpath=//android.widget.TextView[@text="Nguồn tiền"]/following-sibling::android.widget.TextView[1]
${txt_discount_amount_detail}                       xpath=//android.widget.TextView[@text="Chiết khấu"]/following-sibling::android.widget.TextView[1]

${txt_more_payment}                                 xpath=//android.widget.TextView[@text="Thanh toán thêm"]
































