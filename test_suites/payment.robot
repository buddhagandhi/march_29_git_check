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

Checkout with Pay By Check(uid:ff091bbe92864c9680237c29ec7ed1f2)
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

Coupon Code(uid:363ecd262a3e4633a6ddb5dfe7b9dd2d)
	select_product_to_build	Business Cards	ALL INCLUSIVE PRICING 2\" X 3.5\" 14PT Business Cards UV on 4-color side(s)
	select_primary_attributes	25	4:0	Next Business Day
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	apply_coupon_code
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	7	$13.54	$0.00	$6.63
	click_clear_cart
