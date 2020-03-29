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

Buttons(uid:be62f3f1646e411a85d048b966c9aece)
	select_product_to_build	Buttons	1\" Round Promotional Buttons w/ Locking Safety Pin
	select_primary_attributes	100	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	56	$56.32	$0.00	$0.00
	click_clear_cart

Mugs(uid:a049d3d5e39e46e986423ed2f777e831)
	select_product_to_build	Mugs	White Ceramic Mug, 11oz w/ wraparound image, 3\" X 8.5\" print area
	select_primary_attributes	1	4:0	5-7 Business Days
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	9	$8.66	$0.00	$0.00
	click_clear_cart

T-Shirts(uid:9ce17c9447774bd1adc5c28737979ea8)
	select_product_to_build	T-Shirts	Kids Short Sleeve Black w/8.5\" x 11\" Print Area
	select_primary_attributes	1	4:0	2-4 Business Days
	select_base_job_options__t_shirt	X-Small
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	12	$11.91	$0.00	$0.00

Tote Bags(uid:9d20d240da584e348870b15720d08429)
	select_product_to_build	Tote Bags	Tote Bag Blue w/ 9\" x 13\" Print Area on 6OZ Cotton Canvas
	select_primary_attributes	1	4:0	5-7 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	9	$8.62	$0.00	$0.00
	click_clear_cart
