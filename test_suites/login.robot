*** Settings ***
Documentation
...  Checks Login Functionality
Suite Setup	Run keywords
...	log_into_trade
...	AND	SeleniumLibrary.Set Selenium Implicit Wait	10
Test Setup	empty_shopping_cart
Test Teardown	run keyword if test failed	capture page screenshot
Suite Teardown	close all browsers
Resource	${EXECDIR}/keywords.robot

*** Test Cases ***

Username Case Sensetivity Check Test 1 (uid:4acfe4f0371a49d89325212d795a42ce)
	[Tags]	Smoke
	[Template]	Username Case Sensetivity Check keyword
	joycet@4over.com

Username Case Sensetivity Check Test 2 (uid:d6c37786d67e4c779cc895ec1ac777a1)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	JOYCET@4OVER.COM

Username Case Sensetivity Check Test 3 (uid:98f3ae9c2f8844d6ab508a44f985f934)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	Joycet@4Over.com

Username Case Sensetivity Check Test 4 (uid:7f9d410a20054eb288ff44b98dc701fb)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	JoYcEt@4oVeR.CoM

Username Case Sensetivity Check Test 5 (uid:ad39b54ddf4a40059be3c2a31a00c7ce)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	jOyCeT@4OvEr.cOm

Username Case Sensetivity Check Test 6 (uid:eede33e8a0304d6185aaf89860ae5665)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	joycet@4OVER.com

Username Case Sensetivity Check Test 7 (uid:a6b2e35b846745fc8564771c5925de1b)
	[Tags]	
	[Template]	Username Case Sensetivity Check keyword
	JOYCET@4over.com



4overcom Redirect(uid:0a5f09c60bcf4438bea9c30e34194c1c)
	click_on_link_text	Go to 4over.com
	switch_to_window_window_name_that_contains_expected	4over, LLC | Super Trade Printer	Logout


*** Keywords ***

Username Case Sensetivity Check keyword
	[Arguments]	${email}
	click_on_link_text	» Logout
	login	${email}	4over123	Your Workspace

