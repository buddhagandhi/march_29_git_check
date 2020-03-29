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

Orders(uid:8c5296fc692540408e6cf84c4f50d06f)
	click_on_link_text	Orders
	click_on_link_text	Completed Jobs
	click_on_link_text	Awaiting Preview Approval
	click_on_link_text	Job Status

Estimate(uid:bc00d66e41b24f83a8cb31772d1c5e7b)
	click_on_link_text	Estimates
	click_on_request_new_estimate
	fill_in_estimate	QA_TEST	John	wqa@1goodprint.com	8777822737	Postcards	16PT	4/4	Gloss Lamination	Yes	No Countour Cut	No Drill Hole	No Hardware	No Round Corners

Reward(uid:4476ce7d277b4f2f8bce89670f6a6937)
	click_on_link_text	Rewards
	redeem_a_100_coupon
