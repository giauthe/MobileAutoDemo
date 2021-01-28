*** Settings ***
Resource            ../../../imports.robot

*** Keywords ***

Login Success
      Common - input valid pin          ${valid_pin}