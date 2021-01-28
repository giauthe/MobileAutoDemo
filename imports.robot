*** Settings ***

Library              AppiumLibrary
Library              String
Library              Collections
Library              Dialogs
Library              ./keywords/common/Common.py
Library              ./pythonlibs/test.py

# elements
Resource             ./elements/${platform}/CommonElements.robot
Resource             ./elements/${platform}/HomePage.robot
Resource             ./elements/${platform}/TopupPage.robot


# keywords
Resource             ./keywords/common/CommonUtils.robot
Resource             ./keywords/page/${platform}/Common.robot
Resource             ./keywords/page/${platform}/Topup.robot
Resource             ./keywords/page/${platform}/Login.robot
Resource             ./keywords/common/DemoSwagLab.robot
Resource             ./keywords/SwagLab/LoginPageAndroid.robot
Resource             ./keywords/SwagLab/LoginPageIos.robot

# config
Variables            ./config_${env}.yaml

#variable
Resource             ./variables/common.robot
Resource             ./variables/login.robot
Resource             ./variables/topup.robot
