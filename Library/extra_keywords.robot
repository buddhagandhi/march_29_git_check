*** Settings ***
Library		SeleniumLibrary		run_on_failure=NONE

*** Keywords ***

Scroll To Element
    [Documentation]  Keyword was created for headless testing
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})