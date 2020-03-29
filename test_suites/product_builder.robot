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

Additional Options(uid:499991420671419686aef65ceeceed1b)
	select_product_to_build	Business Cards	ALL INCLUSIVE PRICING 2\" X 3.5\" 14PT Business Cards UV on 4-color side(s)
	select_primary_attributes	25	4:0	Next Business Day
	select_additional_options
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	29 	$28.53	$0.00	$0.00
	validate_additional_options	Yes, send me PDF Proof
	validate_additional_options	Yes, please send me samples
	click_clear_cart
