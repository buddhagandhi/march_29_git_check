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

Akuafoil(uid:fe5665e151ed4eb5b8c14b7bbd704e50)
	select_product_to_build	Akuafoil	4.25\" X 5.5\" 16PT Announcement Cards With Akuafoil UV on 4-color side(s), FLAT - No S...
	select_primary_attributes	500	4/5 (4/4 with Foil on Back)	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	174	$174.37	$0.00	$0.00
	click_clear_cart

Brown Kraft Cards(uid:25e8815b27eb4bf9a83ddf8936cd8a6e)
	select_product_to_build	Brown Kraft Cards	4.25\" X 5.5\" 18PT Uncoated Brown Kraft Announcement Cards, FLAT - No Scoring
	select_primary_attributes	100	4:0	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	17	$17.33	$0.00	$0.00
	click_clear_cart

EDGE Cards(uid:776945b908314481b190b4e1bf3ab34b)
	select_product_to_build	EDGE Cards	4.25\" X 5.5\" 32PT Uncoated Black EDGE Announcement Cards, FLAT - No Scoring
	select_primary_attributes	500	4:0	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	116	116.20	$0.00	$0.00
	click_clear_cart

Foil Worx(uid:38c6c303d5b84501b497921f3b2ed3d3)
	select_product_to_build	Foil Worx	1.5\" X 3.5\" 14PT Uncoated Foiled Business Cards
	select_primary_attributes	500	5/0 (4/0 with Foil on Front)	5-7 Business Days
	select_base_job_options__foil_color	Black Foil
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	53	$53.06	$0.00	$0.00
	click_clear_cart

Luster Cards(uid:46f97e9621a1426a9e15137c5ba09909)
	select_product_to_build	Luster Cards	4.25\" X 5.5\" 16PT Gloss Laminated Announcement Cards
	select_primary_attributes	25	4:0	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	73	$72.56	$0.00	$0.00
	click_clear_cart

Natural Cards(uid:6287c6df3eea4aabb84b38b1b9f6c934)
	select_product_to_build	Natural Cards	5.5\" X 17\" 14PT Natural Uncoated Menus
	select_primary_attributes	25	4:0	2-4 Business Days
	select_base_job_options__scoring	No Scoring
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	60	$59.57	$0.00	$0.00
	click_clear_cart

Painted Edge Cards(uid:a1d004b9cf2f42a591c606e4479b3378)
	select_product_to_build	Painted Edge Cards	2\" X 3.5\" 32PT Uncoated Painted EDGE Business Cards
	select_primary_attributes	250	4:0	2-4 Business Days
	select_base_job_options__clear_case_edge_color	Ship with a Brown Box	Black
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	37	$37.49	$0.00	$0.00
	click_clear_cart

Pearl Cards(uid:08b8ed15b03645b7a4d3e9652a4bf256)
	select_product_to_build	Pearl Cards	4.25\" X 5.5\" 14PT Pearl Metallic Announcement Cards, FLAT - No Scoring
	select_primary_attributes	25	4:0	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	21	$20.57	$0.00	$0.00
	click_clear_cart

Raised Foil(uid:2893754ac8ed4b87baa6088b176b1c45)
	select_product_to_build	Raised Foil	2\" X 3.5\" 16PT Suede Business Cards w/ Raised Foil on Both Sides
	select_primary_attributes	100	5/1 (4/1 with Foil on Both Sides)	2-4 Business Days
	select_base_job_options__foil_color	Gold Foil
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	46	$46.49	$0.00	$0.00
	click_clear_cart

Raised Spot UV(uid:d134d1f1d7e542f1a5ceb65e7ec51da8)
	select_product_to_build	Raised Spot UV	2\" X 3.5\" 16PT Suede Hang Tags w/ Raised Spot UV on Front only
	accept_disclamer
	select_primary_attributes	100	4:0	2-4 Business Days
	select_base_job_options__raised_spot_uv	50 Microns	Raised Spot UV Front
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	40	$39.70	$0.00	$0.00
	click_clear_cart

Silk Cards(uid:6ba0e2b7c10e4937823971d780fae545)
	select_product_to_build	Silk Cards	1.5\" X 3.5\" 16PT Silk Laminated Business Cards
	select_primary_attributes	25	4:0	2-4 Business Days
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	15	$15.16	$0.00	$0.00
	click_clear_cart

Suede Cards(uid:40f9472233d4412f824901816487183c)
	select_product_to_build	Suede Cards	1.5\" X 3.5\" 16PT Suede Hang Tags w/ Soft Velvet Lamination
	select_primary_attributes	100	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	37	$36.82	$0.00	$0.00
	click_clear_cart
