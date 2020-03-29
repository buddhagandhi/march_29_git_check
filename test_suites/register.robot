*** Settings ***
Documentation

Suite Setup	Run keywords
...	log_into_trade
...	AND	SeleniumLibrary.Set Selenium Implicit Wait	10
Test Setup	empty_shopping_cart
Test Teardown	run keyword if test failed	capture page screenshot
Suite Teardown	close all browsers
Resource	${EXECDIR}/keywords.robot

*** Test Cases ***

Register New Account(uid:c532342fd6604e3697970f67d0948eeb)
	click_on_link_text	» Logout
	click_on_link_text	Register
	fill_up_registration_form
