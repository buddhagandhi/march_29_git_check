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

Mailing Locations MIA (uid:fd0f9cf3b6d840cfa4948a7c9d731cc6)
	[Tags]	Smoke
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from FL	Miami, FL

Mailing Locations GLN (uid:9bfe0f049f3d4e67a6f3f03ab7dc5f59)
	[Tags]	
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from CA	Glendale, CA

Mailing Locations EWR (uid:7bd309e73a6a42e8bb72b91a4a392c49)
	[Tags]	
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from NJ	Moonachie, NJ

Mailing Locations DAY (uid:9f71751b0e8b45dcb29e737cf4432ee3)
	[Tags]	
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from OH	Dayton, OH

Mailing Locations ARL (uid:f0264443998e4495a2e01ea2a338ade1)
	[Tags]	
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from TX	Arlington, TX

Mailing Locations SEA (uid:e039cf470f694057adddc77275448852)
	[Tags]	
	[Template]	Mailing Locations keyword
	Yes, Direct Mailing from SEA	Seattle, WA




*** Keywords ***

Mailing Locations keyword
	[Arguments]	${mailing_option}	${facility}
	select_product_to_build	Postcards	4\" X 6\" 16PT Postcards w/ Full UV on the front only, No UV Coating on the back
	select_primary_attributes	2500	4:4	Next Business Day
	select_base_job_options__bundling_mailing	No Bundling Services	${mailing_option}
	set_print_set_details__mailing	${facility}
	click_add_to_cart
	validate_shopping_cart	Direct Mail Service	${facility}	63	$62.82	$0.00	$0.00
	click_clear_cart

