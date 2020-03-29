*** Settings ***
Library		SeleniumLibrary		run_on_failure=NONE

*** Variables ***
${BS_REMOTE_URL}   http://${BS_USER}:${BS_ACCESSKEY}@hub-cloud.browserstack.com/wd/hub

&{BS_DC_CHROME_W}   browser=Chrome
...                 browser_version=78.0
...                 os=Windows
...                 os_version=10
...                 resolution=1920x1080
...                 name=BS_CHROME_WINDOWS
...                 browserstack.local=true
...                 browserstack.debug=true
...                 acceptSslCerts=true

&{BS_DC_FF_W}       browser=Firefox
...                 browser_version=70.0
...                 os=Windows
...                 os_version=10
...                 resolution=1920x1080
...                 name=BS_FF_WINDOWS
...                 browserstack.local=true
...                 browserstack.debug=true
...                 acceptSslCerts=true

&{BS_DC_CHROME_OSX}     browser=Chrome
...                     browser_version=78.0
...                     os=OS X
...                     os_version=Catalina
...                     resolution=1920x1080
...                     name=BS_CHROME_OSX
...                     browserstack.local=true
...                     browserstack.debug=true
...                     acceptSslCerts=true

&{BS_DC_FF_OSX}     browser=Firefox
...                 browser_version=70.0
...                 os=OS X
...                 os_version=Catalina
...                 resolution=1920x1080
...                 name=BS_FF_OSX
...                 browserstack.local=true
...                 browserstack.debug=true
...                 acceptSslCerts=true

&{BS_DC_SAFARI_OSX}     browser=Safari
...                     browser_version=13.0
...                     os=OS X
...                     os_version=Catalina
...                     resolution=1920x1080
...                     name=BS_SAFARI_OSX
...                     browserstack.local=true
...                     browserstack.debug=true
...                     acceptSslCerts=true