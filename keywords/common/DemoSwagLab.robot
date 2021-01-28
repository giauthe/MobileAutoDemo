*** Settings ***
Resource            ../../imports.robot

*** Keywords ***

Open SwagLabsMobileApp on ios simulator
        [Arguments]      ${device_name}=${device_name_ios_1}            ${platform_version}=${platform_version_ios_1}
         Open Application
            ...  ${address}
            ...  autoGrantPermissions=${auto_grant_permissions}
            ...  newCommandTimeout=${new_command_timeout}
            ...  platformVersion=${platform_version}
            ...  platformName=${platform_name_ios}
            ...  deviceName=${device_name}
            ...  noReset=${no_reset}
            ...  app=${app}

Open SwagLabsMobileApp on android emulator
        [Arguments]      ${device_name}=${device_name_android_1}            ${platform_version}=${platform_version_android_1}
         Open Application
            ...  ${address}
            ...  autoGrantPermissions=${auto_grant_permissions}
            ...  newCommandTimeout=${new_command_timeout}
            ...  platformVersion=${platform_version}
            ...  platformName=${platformNameAndroid}
            ...  deviceName=${device_name}
            ...  noReset=${no_reset}
            ...  app=${app_file}
            ...  appPackage=${app_package}
            ...  appWaitActivity=${app_wait_activity}