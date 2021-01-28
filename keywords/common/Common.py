import string
import datetime
from unidecode import unidecode
from appium.webdriver.common.touch_action import TouchAction
from appium.webdriver.common.multi_action import MultiAction


def convert_amount(amount_num):
    amount_num = int(amount_num)
    amount = ('{:0,.0f}'.format(amount_num).replace(',', '.')+' VND')
    print('{:0,.0f}'.format(amount_num).replace(',', '.')+' VND')
    return amount


def convert_amount_no_currency(amount_num):
    amount_num = amount_num[0:(len(amount_num)-1)]
    amount = amount_num.replace('.', '')
    print(amount)
    return amount


def validate_balance(pre_balance, after_balance, trans_amount, fee):
    pre_balance = int(pre_balance)
    after_balance = int(after_balance)
    trans_amount = int(trans_amount)
    fee = int(fee)
    if pre_balance - after_balance == trans_amount + fee:
        print('balance match')
        return True
    else:
        print('balance not match')
        return False


def validate_balance_with_discount(pre_balance, after_balance, trans_amount, fee, discount):
    pre_balance = int(pre_balance)
    after_balance = int(after_balance)
    trans_amount = int(trans_amount)
    fee = int(fee)
    discount = float(int(discount[:-1]) * 0.01)
    print(discount)
    if pre_balance - after_balance == trans_amount + fee - discount*trans_amount:
        print('balance match')
        return True
    else:
        print('balance not match')
        return False


def validate_balance_after_recharge(pre_balance, after_balance, trans_amount):
    pre_balance = int(pre_balance)
    after_balance = int(after_balance)
    trans_amount = int(trans_amount)
    if pre_balance - after_balance == trans_amount:
        print('balance match')
        return True
    else:
        print('balance not match')
        return False


def get_customer_name_from_transfer_phone(text):
    customer_name = text[int(text.find(': ')+1):int(len(text))]
    return customer_name.strip()


def validate_trans_time(trans_time):
    current_time = datetime.datetime.now()
    compare_time = current_time.strftime('%d/%m/%Y - %H')
    trans_time = trans_time.strip()[:-6]
    if compare_time == trans_time:
        return True
    else:
        return False


def get_pin(pin, num):
    return pin[num]


# def __init__(self):
#     self._element_finder = ElementFinder()


# def pinch_elements(y1, y2, center_x, center_y):
#     a1 = TouchAction().wait(1500)
#     a1.press(center_x, y1)
#     a1.move_to(center_x, center_y)
#     a1.release()
#
#     a2 = TouchAction().wait(1500)
#     a2.press(center_x, y2)
#     a2.move_to(center_x, center_y)
#     a2.release()
#
#     ma = MultiAction()
#     ma.add(a1, a2)
#     ma.perform()


def pinch_element():
    a1 = TouchAction('MobileDriver').wait(1500)
    a1.press(None, 540, 641)
    a1.move_to(None, 540, 1068)
    a1.release()

    a2 = TouchAction('MobileDriver').wait(1500)
    a2.press(None, 540, 1495)
    a2.move_to(None, 540, 1068)
    a2.release()

    ma = MultiAction('MobileDriver')
    ma.add(a1, a2)
    ma.perform()

