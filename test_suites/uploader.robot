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

Classic Uploader(uid:241d7d65f0b84e86b1bd72ef1baa696a)
	[Tags]	Smoke
	select_product_to_build	Foil Worx	2\" x 3.5\" 16PT Silk Laminated Foiled Business Cards
	select_primary_attributes	500	5/5 (4/4 with Foil on Both Sides)	5-7 Business Days
	select_base_job_options__foil_color	Black Foil
	set_print_set_details__pick_up	Glendale, CA
	click_add_to_cart
	checkout_with_pay_by_check
	click_on_upload_artwork
	upload_files_through_classic_uploader
	cancel_order
