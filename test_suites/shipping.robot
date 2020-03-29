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

Group Shipping 100GLC-BCUC-2X35 (uid:55c9c6a7ff2c40ea8aee15706b3599b6)
	[Tags]	Smoke
	[Template]	Group Shipping keyword
	2" x 3.5" 100LB GLOSS COVER WITH NO AQ	2-4 Business Days	64	$62.80	$0.00	$0.00

Group Shipping 100LB-BCLIN-2X35 (uid:7bbc9ecd351e49a99fdfaa4b84c8eb7d)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 100LB Cover Uncoated Linen Business Cards	2-4 Business Days	80	$78.00	$0.00	$0.00

Group Shipping 14PT-BCMATT-2X35 (uid:c68f2bfcb432467eace122ef8e6c0a54)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	2-4 Business Days	36	$36.84	$0.00	$0.00

Group Shipping 14PT-BCUV-2X35 (uid:d9c5d3592139440fab5e410cfd9ec3df)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	2-4 Business Days	36	$36.84	$0.00	$0.00

Group Shipping 14PT-BCUVFR-2X35 (uid:0d57eb533edd47058e5f45e65a3419c6)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	2-4 Business Days	36	$36.84	$0.00	$0.00

Group Shipping 16PT-BCMATT-2X35 (uid:8219214123e54f64a5d9cfaf3a7c2ed7)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	Next Day + 1	36	$36.84	$0.00	$0.00

Group Shipping 16PT-BCUV-2X35 (uid:d5aa55cb643d493e9859709c09107b37)
	[Tags]	
	[Template]	Group Shipping keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	Next Day + 1	36	$36.84	$0.00	$0.00

Group Shipping 16PT-BCUVFR-2X35 (uid:74fb6c16b820480c91c11f9cccc2ca68)
	[Tags]	
	[Template]	Group Shipping keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	Next Day + 1	36	$36.84	$0.00	$0.00



Purolator(uid:0c67251c0499405f8ecc5ab087421c28)
	[Tags]	Smoke
	select_product_to_build	Postcards	4\" X 6\" 16PT Postcards w/ Full UV on the front only, No UV Coating on the back
	select_primary_attributes	1000	4:4	Next Business Day
	select_base_job_options__bundling_mailing_shrink	No Bundling Services	No Direct Mailing Service	No Shrink Wrapping
	provide_how_many_sets	1
	set_print_set_details__dropship	Toronto	Default Option	Toronto, ON
	click_add_to_cart
	validate_shopping_cart	Purolator Ground	Toronto, ON	28	$28.16	$0.00	$0.00
	click_clear_cart

Pick Up(uid:eec4659f2c924189aab699eae8f5418a)
	[Tags]	Smoke
	select_product_to_build	 Door Hangers	4\" X 7\" Die Cut Door Hangers on 14PT w/ UV
	select_primary_attributes	5000	4:4	2-4 Business Days
	select_base_job_options__die_cut_options	Standard Die Cut
	set_print_set_details__pick_up	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Pickup	Glendale, CA	239	$239.36	$0.00	$0.00
	click_clear_cart

Free Delivery(uid:a6b75c6bc556414eb769a56338f81391)
	[Tags]	Smoke
	select_product_to_build	 Door Hangers	4\" X 7\" Die Cut Door Hangers on 14PT w/ UV
	select_primary_attributes	5000	4:4	2-4 Business Days
	select_base_job_options__die_cut_options	Standard Die Cut
	set_print_set_details__free_delivery	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Free Local Delivery	Glendale, CA	239	$239.36	$0.00	$0.00
	click_clear_cart

Flat Rate 500 100GLC-BCUC-2X35 (uid:ba33c6b2619049fa95d5daea27c39e0d)
	[Tags]	Smoke
	[Template]	Flat Rate 500 keyword
	2" x 3.5" 100LB GLOSS COVER WITH NO AQ	2-4 Business Days	14	$13.54	$0.00	$0.00

Flat Rate 500 100LB-BCLIN-2X35 (uid:5194c610a7164213a8a3eaf64f528549)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 100LB Cover Uncoated Linen Business Cards	2-4 Business Days	17	$17.33	$0.00	$0.00

Flat Rate 500 14PT-BCMATT-2X35 (uid:d3c502628ed6407bb7c10c40b24e6c10)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	2-4 Business Days	8	$7.58	$0.00	$0.00

Flat Rate 500 14PT-BCUV-2X35 (uid:caab69775e6a443383f5ab7224ad55ea)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	2-4 Business Days	8	$7.58	$0.00	$0.00

Flat Rate 500 14PT-BCUVFR-2X35 (uid:2adb5e71fe7c4c8a968fac1a91ddbb80)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	2-4 Business Days	8	$7.58	$0.00	$0.00

Flat Rate 500 16PT-BCMATT-2X35 (uid:a0505557688f4fffbaf3619e5b4e21fe)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	Next Day + 1	8	$7.58	$0.00	$0.00

Flat Rate 500 16PT-BCUV-2X35 (uid:8f8782b11ade4be7a4625e085411175f)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	Next Day + 1	8	$7.58	$0.00	$0.00

Flat Rate 500 16PT-BCUVFR-2X35 (uid:320cb5b4024149269d7a223be9548c4b)
	[Tags]	
	[Template]	Flat Rate 500 keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	Next Day + 1	8	$7.58	$0.00	$0.00



Flat Rate 650 100GLC-BCUC-2X35 (uid:6b48cfd4361643a2b5ef777592457a2e)
	[Tags]	Smoke
	[Template]	Flat Rate 650 keyword
	2" x 3.5" 100LB GLOSS COVER WITH NO AQ	2-4 Business Days	16	$15.70	$0.00	$0.00

Flat Rate 650 100LB-BCLIN-2X35 (uid:eaac9199774e405aadc754946f203f5a)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 100LB Cover Uncoated Linen Business Cards	2-4 Business Days	20	$19.50	$0.00	$0.00

Flat Rate 650 14PT-BCMATT-2X35 (uid:6c459721ad4d4d0091bd8e28578c900d)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	2-4 Business Days	9	$9.21	$0.00	$0.00

Flat Rate 650 14PT-BCUV-2X35 (uid:d041cb76ea4547cca3e0c306517f0338)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	2-4 Business Days	9	$9.21	$0.00	$0.00

Flat Rate 650 14PT-BCUVFR-2X35 (uid:6ea9ab3da60f42d795b3c233780041ee)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	2-4 Business Days	9	$9.21	$0.00	$0.00

Flat Rate 650 16PT-BCMATT-2X35 (uid:a0d182de3b744a1ca0d6b853cca0bb05)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	Next Day + 1	9	$9.21	$0.00	$0.00

Flat Rate 650 16PT-BCUV-2X35 (uid:e20afcbec5d547a3b98d0e70767b735a)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	Next Day + 1	9	$9.21	$0.00	$0.00

Flat Rate 650 16PT-BCUVFR-2X35 (uid:ef92332c1b634790b0c62058f6a3ab8f)
	[Tags]	
	[Template]	Flat Rate 650 keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	Next Day + 1	9	$9.21	$0.00	$0.00



Free Ground Shipping 1000 - 14PT-BCMATT-2X35 (uid:c12eb28060d340c0b8d45c89985d1f06)
	[Tags]	Smoke
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	1000	2-4 Business Days	18	18.41	$0.00	$0.00

Free Ground Shipping 1000 - 14PT-BCUV-2X35 (uid:842269365361451885a3890e31ce6239)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	1000	2-4 Business Days	18	18.41	$0.00	$0.00

Free Ground Shipping 1000 - 14PT-BCUVFR-2X35 (uid:08666aa213234daa96725d4f277e25a8)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	1000	2-4 Business Days	18	18.41	$0.00	$0.00

Free Ground Shipping 1000 - 16PT-BCMATT-2X35 (uid:2c6ce66a13e5443baef0377b9e702c61)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	1000	Next Day + 1	18	18.41	$0.00	$0.00

Free Ground Shipping 1000 - 16PT-BCUV-2X35 (uid:acc2a018f0784af6a989e939bef8bfbc)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	1000	Next Day + 1	18	18.41	$0.00	$0.00

Free Ground Shipping 1000 - 16PT-BCUVFR-2X35 (uid:b7f22cf9ab58487f962a75fed3cbeb37)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	1000	Next Day + 1	18	18.41	$0.00	$0.00

Free Ground Shipping 2500 - 14PT-BCMATT-2X35 (uid:24ad89472adf4db0adeb721f1a48ae67)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	2500	2-4 Business Days	29	$29.24	$0.00	$0.00

Free Ground Shipping 2500 - 14PT-BCUV-2X35 (uid:5def3eb54342412a92a95b099aba723e)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	2500	2-4 Business Days	29	$29.24	$0.00	$0.00

Free Ground Shipping 2500 - 14PT-BCUVFR-2X35 (uid:197c10210bed42ac9febdb856c2b452d)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	2500	2-4 Business Days	29	$29.24	$0.00	$0.00

Free Ground Shipping 2500 - 16PT-BCMATT-2X35 (uid:02c8b5d3b20d482d871a8bb7e2909c85)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	2500	Next Day + 1	29	$29.24	$0.00	$0.00

Free Ground Shipping 2500 - 16PT-BCUV-2X35 (uid:bdda0e5a01584be79ca05310b0820c5a)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	2500	Next Day + 1	29	$29.24	$0.00	$0.00

Free Ground Shipping 2500 - 16PT-BCUVFR-2X35 (uid:f16a2539a4bb40a689762f9ed552dfec)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	2500	Next Day + 1	29	$29.24	$0.00	$0.00

Free Ground Shipping 5000 - 14PT-BCMATT-2X35 (uid:5751a1fbc91e4ed59c062807d843b43a)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Matte/Dull Finish Business Cards	5000	2-4 Business Days	49	$48.74	$0.00	$0.00

Free Ground Shipping 5000 - 14PT-BCUV-2X35 (uid:6e7babf88ebb487293bc9b6552364fc8)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards UV on 4-color side(s)	5000	2-4 Business Days	49	$48.74	$0.00	$0.00

Free Ground Shipping 5000 - 14PT-BCUVFR-2X35 (uid:e82e91a6d5f54579a1e04898b8eb7424)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 14PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	5000	2-4 Business Days	49	$48.74	$0.00	$0.00

Free Ground Shipping 5000 - 16PT-BCMATT-2X35 (uid:992dc770c61b4ab6925285c491b341cb)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Matte/Dull Finish Business Cards	5000	Next Day + 1	49	$48.74	$0.00	$0.00

Free Ground Shipping 5000 - 16PT-BCUV-2X35 (uid:36eee403824c4084b8cd3e53ff448d0f)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" x 3.5" 16PT Business Cards UV on 4-color side(s)	5000	Next Day + 1	49	$48.74	$0.00	$0.00

Free Ground Shipping 5000 - 16PT-BCUVFR-2X35 (uid:492a4b8764e146cca97935950938ca4c)
	[Tags]	
	[Template]	Free Ground Shipping keyword
	2" X 3.5" 16PT Business Cards w/ Full UV on the front only, No UV coating on the bac...	5000	Next Day + 1	49	$48.74	$0.00	$0.00



Facilities TOR (uid:3f3e586a656d481a9c8f40a740badd3a)
	[Tags]	Smoke
	[Template]	Facilities keyword
	Toronto	Toronto, ON	Purolator Ground	$6.45

Facilities EWR (uid:3fa040d00f5e475d9ad94567eaf319d0)
	[Tags]	
	[Template]	Facilities keyword
	Moonachie	Moonachie, NJ	Ground Shipping	$10.55

Facilities DAY (uid:21ccc1f7e4a8436ebb8530a8823cb769)
	[Tags]	
	[Template]	Facilities keyword
	Dayton	Dayton, OH	Ground Shipping	$10.55

Facilities MIA (uid:b275ae6b75374ac7a781882096b162df)
	[Tags]	
	[Template]	Facilities keyword
	Orlando	Miami, FL	Ground Shipping	$14.38

Facilities ARL (uid:e9717c21beac47178b33cd29130f098a)
	[Tags]	
	[Template]	Facilities keyword
	Arlington	Arlington, TX	Ground Shipping	$10.55

Facilities PHX (uid:788cba684a5a4416a8088686d98a596f)
	[Tags]	
	[Template]	Facilities keyword
	Pheonix	Phoenix, AZ	Ground Shipping	$10.55

Facilities SEA (uid:356582851e5f411eb7a3f5b493b53904)
	[Tags]	
	[Template]	Facilities keyword
	Seattle	Seattle, WA	Ground Shipping	$10.55

Facilities GLN (uid:0080537f58f341fd96f7230f4bf1cc79)
	[Tags]	
	[Template]	Facilities keyword
	Los Angeles	Glendale, CA	Ground Shipping	$10.55




*** Keywords ***

Group Shipping keyword
	[Arguments]	${link_text}	${turn_around}	${rewards}	${subtotal}	${order_discount}	${quantity_discount}
	select_product_to_build	Business Cards	${link_text}
	select_primary_attributes	500	4:4	${turn_around}
	provide_how_many_sets	4
	set_print_set_details__default_shipping_group_shipping	Ground Shipping	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	${rewards}	${subtotal}	${quantity_discount}	${order_discount}
	click_clear_cart

Flat Rate 500 keyword
	[Arguments]	${link_text}	${turn_around}	${rewards}	${subtotal}	${order_discount}	${quantity_discount}
	select_product_to_build	Business Cards	${link_text}
	select_primary_attributes	250	4:4	${turn_around}
	provide_how_many_sets	1
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	${rewards}	${subtotal}	${quantity_discount}	${order_discount}
	click_clear_cart

Flat Rate 650 keyword
	[Arguments]	${link_text}	${turn_around}	${rewards}	${subtotal}	${order_discount}	${quantity_discount}
	select_product_to_build	Business Cards	${link_text}
	select_primary_attributes	500	4:4	${turn_around}
	provide_how_many_sets	1
	set_print_set_details__default_shipping	Ground Shipping	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	${rewards}	${subtotal}	${quantity_discount}	${order_discount}
	click_clear_cart

Free Ground Shipping keyword
	[Arguments]	${link_text}	${run_size}	${turn_around}	${rewards}	${subtotal}	${order_discount}	${quantity_discount}
	select_product_to_build	Business Cards	${link_text}
	select_primary_attributes	${run_size}	4:4	${turn_around}
	provide_how_many_sets	1
	set_print_set_details__default_shipping	FREE Ground Shipping	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	${rewards}	${subtotal}	${quantity_discount}	${order_discount}
	click_clear_cart

Facilities keyword
	[Arguments]	${address}	${print_location}	${shipping}	${shipping_cost}
	select_product_to_build	Postcards	 4\" X 6\" 16PT Postcards w/ Full UV on the front only, No UV Coating on the back
	select_primary_attributes	1000	4:4	Next Business Day
	select_base_job_options__bundling_mailing_shrink	No Bundling Services	No Direct Mailing Service	No Shrink Wrapping
	provide_how_many_sets	1
	set_print_set_details__dropship	${address}	Default Option	${print_location}
	click_add_to_cart
	validate_shopping_cart	${shipping}	${print_location}	28	$28.16	$0.00	$0.00
	click_clear_cart

