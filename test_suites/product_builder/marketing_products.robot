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

Announcement Cards(uid:2bdab4039129442192c0e4d3653ebec8)
	select_product_to_build	Announcement Cards	4.25\" X 5.5\" 14PT Pearl Metallic Announcement Cards, FLAT - No Scoring
	select_primary_attributes	25	4:0	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	21	$20.57	$0.00	$0.00
	click_clear_cart

Booklets(uid:9e5513286ae14452b7bc4e5761b06bd0)
	select_product_to_build	Booklets	6\" X 9\" - 12 Page Booklet on 100LB GLOSS BOOK w/ No AQ
	select_primary_attributes	25	4:4	2-4 Business Days
	select_base_job_options__binding_edge	Long Edge
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	55	$55.24	$0.00	$0.00
	click_clear_cart

Bookmarks(uid:95efa3df01f749a9a224e50d23241800)
	select_product_to_build	Bookmarks	1.5\" X 7\" 14PT Postcards UV on color side(s)
	select_primary_attributes	250	4:0	Next Business Day
	select_base_job_options__drill_hole	No Drill Hole
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	15	$15.16	$0.00	$0.00
	click_clear_cart

Business Cards(uid:7b267377cfa5455894c011f3134ffae0)
	select_product_to_build	Business Cards	ALL INCLUSIVE PRICING 2\" X 3.5\" 14PT Business Cards UV on 4-color side(s)
	select_primary_attributes	25	4:0	Next Business Day
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	14	$13.54	$0.00	$0.00
	click_clear_cart

CD and DVD(uid:e7cc5cf0dacf4635bc7d2652778bddb4)
	select_product_to_build	CD and DVD	4.75\" X 4.75\" Single Panel CD Cover On 100LB GLOSS BOOK w/ AQ
	select_primary_attributes	1000	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	67	$67.15	$0.00	$0.00
	click_clear_cart

Calendars(uid:de90d1319651467990076720c04267c5)
	select_product_to_build	Calendars	11\" X 8.5\" - 24 Page Saddle Stitch Calendar On 100LB GLOSS BOOK w/ AQ on both sides
	select_primary_attributes	100	4:4	2-4 Business Days
	select_base_job_options__drill_hole	No Drill Hole
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	889	$888.77	$0.00	$0.00
	click_clear_cart

Catalogs(uid:1e735d26619e480f917c748c490fb838)
	select_product_to_build	Catalogs	8.5\" X 11\" -28 Page Perfect Bound (24 Inside pages 4:4 plus 4 page cover 4:0) w/No AQ
	select_primary_attributes	25	4:4	2-4 Business Days
	select_base_job_options__binding_edge	Long Edge
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	227	$227.44	$0.00	$0.00
	click_clear_cart

Counter Cards(uid:b70aeb31efb746a492d5915608929fe6)
	select_product_to_build	Counter Cards	5.5\" x 8.5\" - 3/16\" Foam Core Counter Cards w/ Easel Backs
	select_primary_attributes	1	4:0	5-7 Business Days
	select_base_job_options__easel
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	11	$10.56	$0.00	$0.00
	click_clear_cart

Door Hangers(uid:81e66b16c8bb42eca22314040a4c9c57)
	select_product_to_build	Door Hangers	4\" X 7\" Die Cut Door Hangers on 14PT w/ UV
	select_primary_attributes	250	4:0	2-4 Business Days
	select_base_job_options__die_cut_options	Arch Die Cut
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	76	$75.81	$0.00	$0.00
	click_clear_cart

EndurACE(uid:b5bb66df30c74f09a4b365247de1a0a5)
	select_product_to_build	EndurACE	2\" x 3.5\" 10PT EndurACE Full Color Business Cards
	select_primary_attributes	50	4:0	5-7 Business Days
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	13	$12.99	$0.00	$0.00
	click_clear_cart

Envelope(uid:10d6a80900f94f33845e1621bfcc4285)
	select_product_to_build	Envelope	8.875\" X 3.875\" #9 ENVELOPE on 70lb Premium Uncoated Text
	select_primary_attributes	250	4:0	5-7 Business Days
	select_base_job_options__window	No Window
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	67	$66.88	$0.00	$0.00
	click_clear_cart

Event Tickets(uid:2c9984c21af944319300cc39a9402ab6)
	select_product_to_build	Event Tickets	8.5X3.5 18PTC1S Tickets w/ Full UV on the front only, No UV Coating on the back w/ Va...
	select_primary_attributes	100	4:0	5-7 Business Days
	select_base_job_options__numbering_perforation	No Numbering	No Perforation
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	30	$30.33	$0.00	$0.00
	click_clear_cart

Flyers and Brochures(uid:80333a9b911344ca86142b98daabe81e)
	select_product_to_build	Flyers and Brochures	ALL INCLUSIVE PRICING 11\" x 17\" 100LB Gloss Book With No AQ
	select_primary_attributes	25	4:0	Next Business Day
	select_base_job_options__folding	Half-Fold
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	40	$40.45	$0.00	$0.00
	click_clear_cart

Greeting Cards(uid:109a217ede434eafbaf3f16d4316a253)
	select_product_to_build	Greeting Cards	10\" X 7\" 14PT Matte/Dull Finish Greeting Cards w/ Spot UV on back only, No UV on the ...
	select_primary_attributes	1000	4:1	2-4 Business Days
	select_base_job_options__blank_envelopes	No Blank Envelopes
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	201	$201.45	$0.00	$0.00
	click_clear_cart

Hang Tags(uid:cd369e77e16e4707b6d55ac0e12a6b76)
	select_product_to_build	 Hang Tags	1.75\" X 3.5\" 14PT Natural Uncoated Hang Tags
	select_primary_attributes	100	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	27	$27.08	$0.00	$0.00
	click_clear_cart

Letterheads(uid:09d3e634239b47b69f78c941ce1877b6)
	select_product_to_build	Letterheads	5.5\" X 8.5\" LETTERHEAD on 70lb LINEN
	select_primary_attributes	250	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	51	$51.02	$0.00	$0.00
	click_clear_cart

Linen Uncoated(uid:25e5fd250b0a423aad55f273b392cd56)
	select_product_to_build	Linen Uncoated	9.5\" X 4.125\" #10 ENVELOPE on 70lb Linen Uncoated Text
	select_primary_attributes	250	4:0	2-4 Business Days
	select_base_job_options__window	No Window
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	74	$73.73	$0.00	$0.00
	click_clear_cart

Magnets(uid:da23f25d482b45f3bae54eeb33f1f9c1)
	select_product_to_build	Magnets	2\" X 3.5\" Indoor Magnet w/ UV Coating on 17PT
	select_primary_attributes	250	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	30	$30.33	$0.00	$0.00
	click_clear_cart

NCR Forms(uid:26a6df42a2734e4d96eadfdc673a26fe)
	select_product_to_build	NCR Forms	8.5\" x 11\" 2 Part NCR Forms w/ Wraparound Cover - Qty 50 per book
	select_primary_attributes	2	1:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	26	$25.62	$0.00	$0.00
	click_clear_cart

Notepads(uid:4fc61239de3b4d4da7df521a76740bf4)
	select_product_to_build	Notepads	4.25\" X 5.5\" 25 Sheet Notepad on 70LB Premium Uncoated Text w/ Chipboard Backer
	select_primary_attributes	50	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	78	$77.57	$0.00	$0.00
	click_clear_cart

Plastic Cards(uid:82f04a725e384e7f87e877c964507142)
	select_product_to_build	Plastic Cards	2\" x 3.5\" 20PT White Plastic Business Cards w/ Round Corners
	select_primary_attributes	100	4:0	5-7 Business Days
	select_base_job_options__radius_of_corners	Rounded 1/4\"
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	36	$35.74	$0.00	$0.00
	click_clear_cart

Postcards(uid:fddc89a971394da789a96319e67e97c7)
	select_product_to_build	Postcards	ALL INCLUSIVE PRICING 4\" X 6\" 14PT Matte/Dull Finish Postcards
	select_primary_attributes	100	4:0	Next Business Day
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	28	$27.80	$0.00	$0.00
	click_clear_cart

Posters(uid:6e775496096047de99c8db1d3e6c8081)
	select_product_to_build	Posters	11.5\" X 17.5\" Posters on 100LB Dull Book w/ Satin AQ
	select_primary_attributes	500	4:0	5-7 Business Days
	set_print_set_details__default_shipping	Default Option	Phoenix, AZ
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Phoenix, AZ	276	$276.18	$0.00	$0.00
	click_clear_cart

Presentation Folders(uid:67d5e59ecfb049a3a9adf2d63d010011)
	select_product_to_build	Presentation Folders	6\" X 9\" Presentation Folder on 100LB Gloss Cover With AQ
	select_primary_attributes	500	4:0	2-4 Business Days
	select_base_job_options__pockets_bc_slits	1 Pocket on the Left (Front) Side	No Business Card Slits
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	348	$347.66	$0.00	$0.00
	click_clear_cart

Proofs(uid:3b84ee7f88af4a5f8fdce89ea8c3207c)
	select_product_to_build	Proofs	Epson Proofs Up to 8.5\" x 11\"
	select_primary_attributes	1	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	27	$27.08	$0.00	$0.00
	click_clear_cart

Roll Labels(uid:9acffc347625418b8a3b07d61f2c2aa7)
	select_product_to_build	 Roll Labels	1\" x 1\" Semi-Gloss Paper Roll Label
	accept_disclamer
	select_primary_attributes	250	4:0	2-4 Business Days
	select_base_job_options__lamination_shape_unwind	No Lamination	Circle	Not Important
	set_print_set_details__default_shipping	Default Option	Glendale, CA
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	79	$79.06	$0.00	$0.00
	click_clear_cart

Sample Request(uid:8c0c84bae723466f8268e510115d9af6)
	select_product_to_build	 Sample Request	Sample packs for Grand4mat products
	select_primary_attributes	1	Non Print	5-7 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	FREE Ground Shipping	Glendale, CA	7	$7.04	$0.00	$0.00
	click_clear_cart

Sell Sheets(uid:701c7fd7ae3a4be1b927128a70ebba88)
	select_product_to_build	Sell Sheets	11\" X 17\" 14PT Sell Sheets UV on 4-color side(s)
	select_primary_attributes	100	4:0	2-4 Business Days
	select_base_job_options__scoring	No Scoring
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	354	$354.15	$0.00	$0.00

Stickers(uid:e166768fac7347ecbf16dddd3a8e7006)
	select_product_to_build	Stickers	1.5\" X 2.5\" OVAL Stickers w/ UV
	select_primary_attributes	500	4:0	2-4 Business Days
	select_base_job_options__shape	Oval
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	27	$27.08	$0.00	$0.00
	click_clear_cart

Table Tent Cards(uid:a628b8e7828c4916b012890c16527944)
	select_product_to_build	Table Tent Cards	4\" X 6\" (Flat Size: 4 X 16.25) 14PT MATTE Table Tent, Die Cut and Scoring Included
	select_primary_attributes	250	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	101	$101.35	$0.00	$0.00
	click_clear_cart

Tear Off Cards(uid:2936cadf847c42a58a3e53a636888d4e)
	select_product_to_build	Tear Off Cards	4.25\" X 11\" Door Hangers w/ tear-off perforation on 16PT w/ UV
	select_primary_attributes	1000	4:0	2-4 Business Days
	select_base_job_options__die_cut_perforation	Arch Die Cut	Perforation 2\" from Bottom
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	144	$144.05	$0.00	$0.00
	click_clear_cart

Trading Cards(uid:3d5972e7c13a4949bf1aa356c8f315bc)
	select_product_to_build	Trading Cards	2.5\" X 3.5\" 14PT Trading Cards UV on 4-color side(s)
	select_primary_attributes	25	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	7	$7.27	$0.00	$0.00
	click_clear_cart

Variable Data(uid:d7a9c141e61a4fda930d7cd3227bbe02)
	select_product_to_build	Variable Data	5.25\" X 7.25\" A7 ENVELOPE on 70lb Premium Uncoated Text w/ Variable Addressing
	accept_disclamer
	select_primary_attributes	100	4:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	57	$57.40	$0.00	$0.00
	click_clear_cart

Menus(uid:d50b5ee35ab84bf48cad55322232187d)
	select_product_to_build	Menus	11\" X 17\" 14PT Natural Uncoated Sell Sheets
	select_primary_attributes	25	4:0	2-4 Business Days
	select_base_job_options__scoring	No Scoring
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	260	$259.93	$0.00	$0.00
	click_clear_cart

Window Clings(uid:fc9e41893487466084ec29145f38d7de)
	select_product_to_build	Window Clings	11\" x 17\" 8 mil Clear Window Cling
	select_primary_attributes	25	5:0	2-4 Business Days
	set_print_set_details__default_shipping
	click_add_to_cart
	validate_shopping_cart	Ground Shipping	Glendale, CA	63	$63.34	$0.00	$0.00
	click_clear_cart
