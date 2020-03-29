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

EDDM Print Only(uid:7752b18be38c42828d2e53d6588ca217)
	select_product_to_build	EDDM Print Only	4.5\" X 12\" 14PT EDDM Postcards UV on 4-color side(s)
	select_primary_attributes	100	4:0	2-4 Business Days
	select_base_job_options__bundling	No Bundling Services
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	54	$54.15	$0.00	$0.00
	click_clear_cart
