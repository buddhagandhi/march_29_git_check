*** Settings ***
Library		SeleniumLibrary		run_on_failure=NONE
Library		String
Variables	${EXECDIR}/Library/trade_parser.py
Resource	${EXECDIR}/Library/extra_keywords.robot
Resource	${EXECDIR}/PO/check_payment.robot
Resource	${EXECDIR}/PO/estimates.robot
Resource	${EXECDIR}/PO/index.robot
Resource	${EXECDIR}/PO/orders.robot
Resource	${EXECDIR}/PO/product_builder.robot
Resource	${EXECDIR}/PO/rewards.robot
Resource	${EXECDIR}/PO/shopping_cart.robot
Resource	${EXECDIR}/PO/uploader.robot
Resource	${EXECDIR}/PO/buyabatch.robot
Resource	${EXECDIR}/PO/signup.robot
Resource	${EXECDIR}/PO/browserstack.robot

*** Keywords ***
# Configures Run Size, Color, and Turn Around Time
select_primary_attributes
	[Arguments]	${run_size}=	${color}=	${turn_around}=
	# TODO: Implement action: Select  RUN SIZE: ${run_size}
	SeleniumLibrary.Click Element	${PB_RUNSIZE}
	SeleniumLibrary.Select From List By Label	${PB_RUNSIZE}	${run_size}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select  COLOR: ${color}
	SeleniumLibrary.Click Element	${PB_COLOR}
	SeleniumLibrary.Select From List By Label	${PB_COLOR}	${color}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select  TURN-AROUND: ${turn_around}
	SeleniumLibrary.Click Element	${PB_TURNAROUND}
	SeleniumLibrary.Select From List By Label	${PB_TURNAROUND}	${turn_around}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Print Set Details for Default Shipping
set_print_set_details__default_shipping
	[Arguments]	${shipping_type}=Default Option	${print_location}=Glendale, CA
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Select DELIVERY: Shipping
	SeleniumLibrary.Select From List By Label	${PB_DELIVERY}	Shipping
	# TODO: Implement action: Click SHIP TO: default shipping
	# SeleniumLibrary.Wait Until Element Is Enabled	${PB_DEFAULT_SHIP}
	SeleniumLibrary.Set Focus To Element	${PB_DEFAULT_SHIP}
	SeleniumLibrary.Click Element	${PB_DEFAULT_SHIP}
	# TODO: Implement action: Select Shipping Type: default shipping
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_SHIPPING}
	SeleniumLibrary.Select From List By Index	${PB_SHIPPING}	0 	#SELECTS FIRST AVAILABLE OPTION
	# TODO: Implement action: This product will be available from ${print_location}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	SeleniumLibrary.Scroll Element Into View  ${PB_LOC_TXT}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


# Checkout with Pay By Check Option
checkout_with_pay_by_check
	# TODO: Implement action: Click on PAY BY CHECK
	SeleniumLibrary.Click Element	${SC_PBC}
	# TODO: Implement result: CHECK PAYMENT page is shown
	SeleniumLibrary.Page Should Contain	Check Payment
	# TODO: Implement action: Click Checkout ->
	SeleniumLibrary.Click Element	${CP_CHECKOUT}
	# TODO: Implement result: Directs you to YOUR SHOPPING CART with your Order ID.
	# SeleniumLibrary.Wait Until Element Is Visible	${SC_ORDER_ID}
	# TODO: Implement result: Log Order Number
	${order_id}=	SeleniumLibrary.Get Text	${SC_ORDER_ID}
	BuiltIn.Log To Console	${order_id}
	BuiltIn.Log	${order_id}


# Clicks on left nav product then the product link text
select_product_to_build
	[Arguments]	${product_category}=	${link_text}=
	# TODO: Implement action: Click link ${product_category}
	# SeleniumLibrary.Scroll Element Into View	xpath://a[contains(text(),'${product_category}')]
	# SeleniumLibrary.Wait Until Element Is Enabled	xpath://a[contains(text(),'${product_category}')]
	# SeleniumLibrary.Click Link	${product_category}
	# BuiltIn.Log To Console	xpath://a[contains(text(),'${link_text}')]
	# # TODO: Implement action: Click link ${link_text}
	# SeleniumLibrary.Scroll Element Into View	xpath://a[contains(text(),'${link_text}')]
	# SeleniumLibrary.Wait Until Element Is Enabled	xpath://a[contains(text(),'${link_text}')]
	# SeleniumLibrary.Set Focus To Element	xpath://a[contains(text(),'${link_text}')]
	# SeleniumLibrary.Click Link	${link_text}
	# SeleniumLibrary.Scroll Element Into View	link:${product_category}
	extra_keywords.Scroll To Element	link:${product_category}
	# SeleniumLibrary.Wait Until Element Is Enabled	link:${product_category}
	SeleniumLibrary.Click Link	${product_category}
	BuiltIn.Log To Console	${link_text}
	# TODO: Implement action: Click link ${link_text}
	# SeleniumLibrary.Scroll Element Into View	link:${link_text}
	extra_keywords.Scroll To Element	link:${link_text}
	# SeleniumLibrary.Wait Until Element Is Enabled	link:${link_text}
	SeleniumLibrary.Set Focus To Element	link:${link_text}
	SeleniumLibrary.Click Link	${link_text}


# Base Job Options for Bundling, Mailing and Shrink Wrapping Configuration
select_base_job_options__bundling_mailing_shrink
	[Arguments]	${bundling}=No Bundling Services	${mailing}=No Direct Mailing Service	${shrink_wrapping}=No Shrink Wreapping
	# TODO: Implement action: Select Bundling: ${bundling}
	SeleniumLibrary.Click Element	xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[0]']	${bundling}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Mailing Service: ${mailing}
	SeleniumLibrary.Click Element	xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[1]']	${mailing}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Shrink Wrapping: ${shrink_wrapping}
	# TODO: Implement action: Select
	SeleniumLibrary.Click Element	xpath://select[@id='options[2]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[2]']	${shrink_wrapping}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Sets Set Value for product
provide_how_many_sets
	[Arguments]	${qty}=
	# TODO: Implement action: Input Set Count: ${qty}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_SETS_INPUT}
	# SeleniumLibrary.Scroll Element Into View	${PB_SETS_INPUT}
	extra_keywords.Scroll To Element  ${PB_SETS_INPUT}
	SeleniumLibrary.Input Text	${PB_SETS_INPUT}	${qty}
	# TODO: Implement action: Click Generate Sets
	SeleniumLibrary.Click Element	${PB_GENERATE_SETS}


# Base Job Options for Rounded Corners Configuration
select_base_job_options__rounded_corners
	[Arguments]	${radius_of_corners}=Rounded 1/4\"	${round_corners}=Rounded 2 Corners
	# TODO: Implement action: Select  RADIUS OF CORNERS: ${radius_of_corners}
	SeleniumLibrary.Click Element	xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[0]']	${radius_of_corners}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select  ROUND CORNERS: ${round_corners}
	SeleniumLibrary.Click Element	xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[1]']	${round_corners}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Print Set Details for Dropship
set_print_set_details__dropship
	[Arguments]	${address}=	${shipping_type}=Default Option	${print_location}=
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Select DELIVERY: Shipping
	SeleniumLibrary.Click Element  ${PB_DELIVERY}
	SeleniumLibrary.Select From List By Label	${PB_DELIVERY}	Shipping
	# TODO: Implement action: Select SHIP TO: drop ship
	SeleniumLibrary.Click Element	${PB_DROPSHIP}
	# TODO: Implement action: Click Address: ${address}
	# SeleniumLibrary.Wait Until Element Is Enabled	id:abook_6902900
	# SeleniumLibrary.Set Focus To Element  xpath://div[@id='pop_content']
	${add_available}=	BuiltIn.Run Keyword And Return Status	SeleniumLibrary.Element Should Be Visible	link:${address}
	BuiltIn.Log To Console	Address Element Is Available = ${add_available}
	BuiltIn.Run Keyword Unless	${add_available}	SeleniumLibrary.Click Element	${PB_ADDRESS_NEXT}
	# SeleniumLibrary.Wait Until Element Is Enabled	link:${address}		timeout=10
	SeleniumLibrary.Click Element	link:${address}
	# TODO: Implement action: Select Shipping Type: ${shipping_type}
	SeleniumLibrary.Select From List By Index	${PB_SHIPPING}	0 	#SELECTS FIRST AVAILABLE OPTION
	# TODO: Implement action: This product will be available from ${print_location}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


# Base Job Options for Diecut Configuration
select_base_job_options__die_cut_options
	[Arguments]	${die}=Standard Die Cut
	# TODO: Implement action: Select Die Cut Options: ${die}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[0]']	${die}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Base Job Options for Foil Configuration
select_base_job_options__foil_color
	[Arguments]	${foil}=
	# TODO: Implement action: Select FOIL COLOR: ${foil}
	SeleniumLibrary.Click Element	xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[0]']	${foil}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Print Set Details for Default Shipping with Group Shipping
set_print_set_details__default_shipping_group_shipping
	[Arguments]	${shipping_type}=Default Option	${print_location}=Glendale, CA
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Select DELIVERY: Shipping
	SeleniumLibrary.Click Element  ${PB_DELIVERY}
	SeleniumLibrary.Select From List By Label	${PB_DELIVERY}	Shipping
	# TODO: Implement action: Select SHIP TO: default shipping
	SeleniumLibrary.Click Element	${PB_DEFAULT_SHIP}
	# TODO: Implement action: Select GROUP SHIPPING: yes
	SeleniumLibrary.Select Radio Button	${PB_GROUP_SHIP}	yes
	# TODO: Implement action: Select Shipping Type: ${shipping_type}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_SHIPPING}
	SeleniumLibrary.Select From List By Index	${PB_SHIPPING}	0 	#SELECTS FIRST AVAILABLE OPTION
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	# TODO: Implement action: This product will be available from ${print_location}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


click_on_estimates
	# TODO: Implement action: Click on Estimates
	SeleniumLibrary.Click Element	${IX_ESTIMATES}
	# TODO: Implement result: Estimates / Price Match Quotes headers are visible
	SeleniumLibrary.Page Should Contain	Estimates / Price Match Quote


click_on_request_new_estimate
	# TODO: Implement action: Click on Request New Estimate
	SeleniumLibrary.Click Element	${EST_REQ}
	SeleniumLibrary.Select Checkbox	${EST_REM}
	SeleniumLibrary.Click Element	${EST_I_UNDERSTAND}
	# TODO: Implement result: Request an Estimate header visible
	SeleniumLibrary.Page Should Contain	Request an Estimate


fill_in_estimate
	[Arguments]	${estimate_name}=4OverRobotAutomation	${name}=John	${email}=wqa@1goodprint.com	${phone}=8777822737	${category}=	${sub_paper}=	${print_type}=	${coating}=	${options}=Yes	${contour}=No Countour Cut	${drill_hole}=No Drill Hole	${hardware}=No Hardware	${rounded_corner}=No Round Corners
	# TODO: Implement action: Input ESTIMATE NAME: ${estimate_name}
	SeleniumLibrary.Input Text	${EST_NAME}	${estimate_name}
	# TODO: Implement action: Input REQUESTOR NAME: ${name}
	SeleniumLibrary.Input Text	${EST_REQ_NAME}	${name}
	# TODO: Implement action: Input REQUESTOR EMAIL: ${email}
	SeleniumLibrary.Input Text	${EST_REQ_EMAIL}	${email}
	# TODO: Implement action: Input Input REQUESTOR PHONE: ${phone}
	SeleniumLibrary.Input Text	${EST_REQ_PHONE}	${phone}
	# TODO: Implement action: Input QUANTITY: 1
	SeleniumLibrary.Input Text	${EST_QTY}	1
	# TODO: Implement action: Input FLAT SIZE: 1\" x 1\"
	SeleniumLibrary.Input Text	${EST_FLATSIZE_W}	1
	SeleniumLibrary.Input Text	${EST_FLATSIZE_H}	1
	# TODO: Implement action: Input FINISH SIZE: 1\" x 1\"
	SeleniumLibrary.Input Text	${EST_FINSIZE_W}	1
	SeleniumLibrary.Input Text	${EST_FINSIZE_H}	1
	# TODO: Implement action: Select CATEGORY: ${category}
	SeleniumLibrary.Select From List By Label	${EST_CAT}	${category}
	# TODO: Implement action: Select SUBSTRATE/PAPER TYPE: ${sub_paper}
	SeleniumLibrary.Select From List By Label	${EST_SUB}	${sub_paper}
	# TODO: Implement action: Select PRINT TYPE: ${print_type}
	SeleniumLibrary.Select From List By Label	${EST_PRINT_TYPE}	${print_type}
	# TODO: Implement action: Select COATING: ${coating}
	SeleniumLibrary.Select From List By Label	${EST_COAT}	${coating}
	# TODO: Implement action: Select FINISHING & ADDITIONAL OPTIONS: ${options}
	SeleniumLibrary.Select From List By Label	${EST_OPT}	No
	# TODO: Implement action: Select CONTOUR CUT: ${contour}
	# TODO: Implement action: Select DRILL HOLE: ${drill_hole}
	# TODO: Implement action: Select HARDWARE: ${hardware}
	# TODO: Implement action: Select ROUND CORNERS: ${rounded_corner}
	# TODO: Implement action: Click Submit
	# SeleniumLibrary.Wait Until Element Is Visible	${EST_SUBMIT}
	SeleniumLibrary.Click Element	${EST_SUBMIT}
	# TODO: Implement result: Estimate Request Processed Successfully.
	SeleniumLibrary.Page Should Contain	Estimate Request Processed Successfully.


# Empty's your shopping cart
click_clear_cart
	# TODO: Implement action: Click Clear Cart
	SeleniumLibrary.Click Element	${SC_CLEAR_CART}
	# TODO: Implement result: Are you sure you want to clear your cart
	SeleniumLibrary.Page Should Contain	Are you sure you want to clear your cart
	# *NOTE* ALL jobs in your cart will be permanently lost.
	# TODO: Implement action: Click Delete
	SeleniumLibrary.Click Element	${SC_DELETE}
	# TODO: Implement result: Your job has been deleted successfully.
	SeleniumLibrary.Wait Until Page Contains  Your job has been deleted successfully.	timeout=10
	# SeleniumLibrary.Page Should Contain	Your job has been deleted successfully.


# Validates the following fields. Shipping Method, Shipping Cost, Production Facility
validate_shopping_cart
        [Arguments]     ${shipping_method}=Ground Shipping      ${production_facility}=Glendale, CA     ${rewards_point}=       ${total_subtotal}=      ${quantity_discount}=$0.00      ${order_discount}=$0.00
        validate_shopping_cart_elements	class:continueshop_btn  class:clearcart_btn     id:couponDisplay        xpath://div[contains(text(),'Your Shopping Cart')]      xpath://div[contains(text(),'Promotional Codes')]       xpath://div[contains(text(),'Checkout')]
        verify_shipping_method  xpath://tr[3]/td[2]/div/p[5]    ${shipping_method}
        verify_production_facility      xpath://tr[3]/td[2]/div/p[11]   ${production_facility}
        verify_subtotal_and_rewards     id:rewards_total        id:total_subtotal       ${rewards_point}        ${total_subtotal}
        verify_cart_discount    xpath://tfoot//tr[2]//td[2]     id:order_discount       ${quantity_discount}    ${order_discount}
        verify_shipping_and_processing_total    id:total_shipping       ${shipping_method}
        verify_cart_total_is_not_zero   id:total_price


# Validates Purolator Shipping Options
verify_purolator_shipping_options
	# TODO: Implement action: Validate Purolator Shipping Options
	# TODO: Implement result: Puroloator Ground
	# TODO: Implement result: Purolator Express
	# TODO: Implement result: Standard
	# TODO: Implement result: Expedited
	# TODO: Implement result: Saver
	# TODO: Implement result: Express


# Print Set Details for Pick Up
set_print_set_details__pick_up
	[Arguments]	${print_location}=Glendale, CA
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Select DELIVERY: Pickup
	SeleniumLibrary.Select From List By Label	${PB_DELIVERY}	Pickup
	# TODO: Implement action: This product will be available from ${print_location}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


# Print Set Details for Free Delivery
set_print_set_details__free_delivery
	[Arguments]	${print_location}=Glendale, CA
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Select DELIVERY: Free Local Delivery
	SeleniumLibrary.Select From List By Label	${PB_DELIVERY}	Free Local Delivery
	# TODO: Implement action: This product will be available from ${print_location}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


# Base Job Options for Bundling and Mailing Configuration
select_base_job_options__bundling_mailing
	[Arguments]	${bundling}=No Bundling Services	${mailing}=
	# TODO: Implement action: Select Bundling: ${bundling}
	SeleniumLibrary.Click Element	xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[0]']	${bundling}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Mailing Service: ${mailing}
	SeleniumLibrary.Click Element	xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label	xpath://select[@id='options[1]']	${mailing}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Print Set Details for Mailing
set_print_set_details__mailing
	[Arguments]	${print_location}=
	# TODO: Implement action: Input SET NAME / PO: 4OverRobotAutomation
	SeleniumLibrary.Input Text	${PB_SET_NAME}	4OverRobotAutomation
	# TODO: Implement action: Verify DIRECT MAILING FEE
	SeleniumLibrary.Element Should Contain	${PB_DM_FEE} 	$99.00
	# TODO: Implement result: $99.00
	# TODO: Implement action: Select DELIVERY: Mailing
	SeleniumLibrary.Element Should Contain	${PB_DELIVERY}	Mailing
	# TODO: Implement action: This product will be available from ${print_location}
	# SeleniumLibrary.Wait Until Element Is Visible	${PB_LOC_TXT}
	SeleniumLibrary.Element Should Contain	${PB_LOC_TXT}	This product will be available from ${print_location}


click_on_rewards
	# TODO: Implement action: Click on Rewards
	SeleniumLibrary.Click Element	${IX_REWARDS}
	# TODO: Implement result: Welcome to Rewards Points 2.0!
	SeleniumLibrary.Page Should Contain	Welcome to Rewards Points 2.0!


# Redeem a $1.00 Coupon
redeem_a_100_coupon
	# TODO: Implement action: Click GET IT NOW! from the $1.00 Coupon
	SeleniumLibrary.Click Element	${REWARDS_1_GETITNOW}
	# TODO: Implement result: Are you *sure* you would like to use 100 points to get a $1.00 Coupon? Reward point purchases are non-refundable.
	#
	# Click \"Yes\" to generate a code, or click \"No\" to select a different item.
	# TODO: Implement action: Click Yes
	SeleniumLibrary.Click Element	${REWARDS_YES}
	# TODO: Implement result: Success! Your reward gift request has been sent!
	SeleniumLibrary.Wait Until Page Contains	Success! Your reward gift request has been sent!
	# Please check your email, or browse to your Message Center for your confirmation notice.


click_on_orders
	SeleniumLibrary.Click Element	${IX_ORDERS}
	SeleniumLibrary.Page Should Contain	Track your most recent job statuses.


# Uploads artwork for Trade
click_on_upload_artwork
	SeleniumLibrary.Wait Until Element Is Visible  ${SC_UPLOAD}
	SeleniumLibrary.Click Element	${SC_UPLOAD}


# Cancels an existing order
cancel_order
	# TODO: Implement action: Click Cancel Job
	SeleniumLibrary.Wait Until Page Contains  Order Details - Active  timeout=30
	SeleniumLibrary.Wait Until Page Contains Element  ${ORDERS_CANCEL}  timeout=10
	SeleniumLibrary.Click Element	${ORDERS_CANCEL}
	# TODO: Implement action: Input \"4OverRobotAutomation\"
	SeleniumLibrary.Input Text	${CANCEL_REASON}	4OverRobotAutomation
	# TODO: Implement action: Click Ok
	SeleniumLibrary.Click Element	${CANCEL_OK}
	# TODO: Implement result: Job cancelled successfully
	SeleniumLibrary.Page Should Contain	Job cancelled successfully


# Uploads artwork using the classic uploader
upload_files_through_classic_uploader
	# TODO: Implement action: Upload via Class Uploader
	SeleniumLibrary.Click Element	${UP_CLASSIC}
	# TODO: Implement result: If you're having difficulty uploading, click here to use our \"classic\" uploader.
	# TODO: Implement action: Upload Needed Files
	SeleniumLibrary.Choose File	${UP_FRONT}	${UP_FILE}
	SeleniumLibrary.Choose File	${UP_FRONT_FOIL}	${UP_FILE}
	SeleniumLibrary.Choose File	${UP_BACK}	${UP_FILE}
	SeleniumLibrary.Choose File	${UP_BACK_FOIL}	${UP_FILE}
	# TODO: Implement action: Click Upload Artwork
	SeleniumLibrary.Click Element	${UP_UPLOAD}
	# SeleniumLibrary.Wait Until Element Is Enabled	${ORDERS_CANCEL}


# Used for Suite Setup
log_into_trade
	[Arguments]	${website}=${URL.${ENVIRONMENT}}	${username}=${EMAIL}	${password}=${PW}	${expected}=Your Workspace
	# TODO: Implement action: Go to ${website}
	# SeleniumLibrary.Open Browser	url=${website}	browser=chrome	remote_url=${BS_REMOTE_URL}		desired_capabilities=${BS_DC_CHROME_W}
	SeleniumLibrary.Open Browser	url=${website}	browser=chrome
	# SeleniumLibrary.Set Window Size		1920	1080
	SeleniumLibrary.Maximize Browser Window
	# TODO: Implement action: Input Username: ${username}
	SeleniumLibrary.Input Text	${IX_LOGIN_NAME}	${username}
	# TODO: Implement action: Input Password: ${password}
	SeleniumLibrary.Input Password	${IX_LOGIN_PW}	${password}
	# TODO: Implement action: Click Log In
	SeleniumLibrary.Click Button	${IX_LOGIN}
	SeleniumLibrary.Handle Alert
	# TODO: Implement result: Page Should Contain ${expected}
	SeleniumLibrary.Page Should Contain	${expected}


# Test Set Up to verify Shopping Cart is empty
empty_shopping_cart
	BuiltIn.Run Keyword And Ignore Error  SeleniumLibrary.Unselect Frame
	SeleniumLibrary.Click Element	${IX_4OVER}
	# SeleniumLibrary.Click Element	xpath://img[@src='/images/logo-img.png']
	${empty}=	BuiltIn.Run Keyword And Return Status		Element Should Be Enabled		${IX_CART}
	BuiltIn.Log To Console	Shopping cart is ${empty}
	BuiltIn.Run Keyword If	${empty}	Click Element	${IX_CART}
	BuiltIn.Run Keyword If	${empty}	click_clear_cart



# Clicks on a element using its text link
click_on_link_text
	[Arguments]	${link_text}=text
	SeleniumLibrary.Click Link  ${link_text}  modifier=False


# Selects Buy A Batch and switches to the iFrame
click_on_buy_a_batch
	# TODO: Implement action: Click on Buy A Batch
	SeleniumLibrary.Click Link  Buy A Batch  modifier=False
	# TODO: Implement action: Select Iframe
	# SeleniumLibrary.Wait Until Element Is Visible	${IFRAME}
	SeleniumLibrary.Select Frame  ${IFRAME}
	# SeleniumLibrary.Maximize Browser Window
	# SeleniumLibrary.Set Window Size		1920	1080
	BuiltIn.Sleep  2
	BuiltIn.Run Keyword And Ignore Error	SeleniumLibrary.Wait Until Element Is Enabled  ${BAB_WELCOME}
	BuiltIn.Run Keyword And Ignore Error	SeleniumLibrary.Click Element  ${BAB_WELCOME}
	# SeleniumLibrary.Wait Until Page Contains Element  ${BAB_DOUBLESIDED}	timeout=30
	# SeleniumLibrary.Wait Until Element Is Visible	${BAB_DOUBLESIDED}	timeout=30



# Checks Order In Buy A Batch Product Builder
validate_buy_a_batch__order
	[Arguments]	${product_code}=
	# TODO: Implement action: Product Code should be visible ${product_code}
	# SeleniumLibrary.Wait Until Element Is Visible  ${BAB_PRODUCT_CONTAINER}
	SeleniumLibrary.Element Should Contain  ${BAB_PRODUCT_CONTAINER}  ${product_code}


# Checks Buy A Batch Detail within Product Builder
validate_buy_a_batch__product_detail
	[Arguments]	${run_size}=	${color}=	${tat}=
	# TODO: Implement action: Product Detail should contain ${run_size}
	SeleniumLibrary.Element Should Contain  ${BAB_PRODUCT_DETAIL}  ${run_size}
	# TODO: Implement action: Product Detail should contain ${color}
	SeleniumLibrary.Element Should Contain  ${BAB_PRODUCT_DETAIL}  ${color}
	# TODO: Implement action: Product Detail should contain ${tat}
	SeleniumLibrary.Element Should Contain  ${BAB_PRODUCT_DETAIL}  ${tat}


# Checks Flute Direction within Buy A Batch Summary
validate_flute_direction
	[Arguments]	${direction}=
	# TODO: Implement action: Flute Direction should be ${direction}
	SeleniumLibrary.Element Should Contain  ${BAB_FLUTE_DIRECTION}  ${direction}


continue_to_buy_a_batch_product_builder
	# TODO: Implement action: Click Continue
	# SeleniumLibrary.Wait Until Element Is Enabled  ${BAB_CONTINUE}
	SeleniumLibrary.Click Element  ${BAB_CONTINUE}


# Checks Number of Signs within Buy A Batch Summary
validate_number_of_signs
	[Arguments]	${amount}=
	# TODO: Implement action: Validate Number of Signs
	SeleniumLibrary.Element Should Contain  ${BAB_NUM_SIGNS}  ${amount}
	# TODO: Implement result: ${amount}


# Checks Product Size in Summary
validate_buy_a_batch__product_size
	[Arguments]	${expected_size}=
	# TODO: Implement action: Expected Size: ${expected_size}
	# SeleniumLibrary.Wait Until Element Is Visible  ${BAB_CONTINUE}
	SeleniumLibrary.Element Should Contain  ${BAB_PRODUCT_SIZE_SUM}  ${expected_size}


# Checks Sheet Count in Summary
validate_buy_a_batch__sheet_count
	[Arguments]	${expected}=
	# TODO: Implement action: Sheet count is: ${expected}
	SeleniumLibrary.Element Should Contain  ${BAB_SHEET_COUNT}  ${expected}


# Checks Total Cost in Summary
validate_buy_a_batch__total_cost
	[Arguments]	${cost}=
	# TODO: Implement action: Total Cost: ${cost}
	SeleniumLibrary.Element Should Contain  ${BAB_TOTAL}  ${cost}


select_buy_a_batch_double_sided
	# TODO: Implement action: Click Double Sided
	# SeleniumLibrary.Wait Until Element Is Enabled  ${BAB_DOUBLESIDED}
	SeleniumLibrary.Click Element	${BAB_DOUBLESIDED}



# Choose Product Size
select_buy_a_batch_product_size
	[Arguments]	${size}=
	# TODO: Implement action: Select ${size}
	SeleniumLibrary.Click Element  ${BAB_PRODUCT_SIZE}
	SeleniumLibrary.Select From List By Label  ${BAB_PRODUCT_SIZE}  ${size}


# Sets Number Of Signs
set_buy_a_batch_quantity
	[Arguments]	${quantity}=
	# TODO: Implement action: Input: ${quantity}
	SeleniumLibrary.Set Focus To Element  ${BAB_SET_QTY}
	SeleniumLibrary.Double Click Element	${BAB_SET_QTY}
	SeleniumLibrary.Input Text  ${BAB_SET_QTY}  ${quantity}


# Increases's Quantity from an image set in Buy A Batch
increase_quantity
	# TODO: Implement action: Click Increase
	SeleniumLibrary.Set Focus To Element  ${BAB_QTY_INCREASE}
	SeleniumLibrary.Click Element  ${BAB_QTY_INCREASE}


# Decrease's Quantity from an image set in Buy A Batch
decrease_quantity
	# TODO: Implement action: Click Decrease
	SeleniumLibrary.Set Focus To Element  ${BAB_QTY_DECREASE}
	SeleniumLibrary.Click Element  ${BAB_QTY_DECREASE}


add_image_set_in_buy_a_batch
	SeleniumLibrary.Set Focus To Element  ${BAB_ADD_IMAGE_SET}
	SeleniumLibrary.Click Element  ${BAB_ADD_IMAGE_SET}


# Checks Price within Buy A batch Upload Section
validate_buy_a_batch__price
	[Arguments]	${expected_price}=
	# TODO: Implement action: Price is: ${expected_price}
	SeleniumLibrary.Element Should Contain  ${BAB_TOTAL_PRICE}  ${expected_price}


continue_to_order_summary_in_buy_a_batch
	# TODO: Implement action: Click on Next Step
	SeleniumLibrary.Click Element  ${BAB_NEXT_STEP}


# Checks Quantity Description In Upload
validate_buy_a_batch__quantity_description
	[Arguments]	${expected_text}=
	# TODO: Implement action: Validate Quantity Description
	# TODO: Implement result: Expected Quantity: ${expected_text}
	SeleniumLibrary.Element Should Contain  ${BAB_QTY_DESC}  ${expected_text}


upload_front_image_in_buy_a_batch
	[Arguments]     ${file_name}=
	# TODO: Implement action: Upload Front Image using ${file_name}
	SeleniumLibrary.Set Focus To Element  ${BAB_UPLOAD_FRONT}
	${file}=	OperatingSystem.Normalize Path	${EXECDIR}/Test_Files/${file_name}
	SeleniumLibrary.Choose File  ${BAB_UPLOAD_FRONT}  ${file}
	SeleniumLibrary.Wait Until Element Is Not Visible  ${BAB_IMAGE_LOADING}	timeout=120


upload_back_image_in_buy_a_batch
	[Arguments]     ${file_name}=
	# TODO: Implement action: Upload Back Image using ${file_name}
	SeleniumLibrary.Set Focus To Element  ${BAB_UPLOAD_BACK}
	${file}=	OperatingSystem.Normalize Path	${EXECDIR}/Test_Files/${file_name}
	SeleniumLibrary.Choose File  ${BAB_UPLOAD_BACK}  ${file}
	SeleniumLibrary.Wait Until Element Is Not Visible  ${BAB_IMAGE_LOADING}	timeout=120


# Center Option for Buy A Batch
center_front_file
	SeleniumLibrary.Mouse Over  ${BAB_FR_CENTER}
	SeleniumLibrary.Element Should Contain  xpath://div[@class='image-control-container has-text-centered']//div[1]//div[1]//div[1]//button[1]//div[1]//p[1]  Center Image
	SeleniumLibrary.Click Element  ${BAB_FR_CENTER}


# Center Option for Buy A Batch
center_back_file
	SeleniumLibrary.Mouse Over  ${BAB_BK_CENTER}
	SeleniumLibrary.Element Should Contain  xpath://div[@class='flex-center-content']//div[2]//div[1]//div[1]//button[1]//div[1]//p[1]  Center Image
	SeleniumLibrary.Click Element  ${BAB_BK_CENTER}


# Fit Option for Buy A Batch
fit_front_file
	SeleniumLibrary.Mouse Over  ${BAB_FR_FIT}
	SeleniumLibrary.Element Should Contain  xpath://div[@class='image-control-container has-text-centered']//div[1]//div[1]//div[2]//button[1]//div[1]//span[1]  Fit Image To Box
	SeleniumLibrary.Click Element  ${BAB_FR_FIT}


# Fit Option for Buy A Batch
fit_back_file
	SeleniumLibrary.Mouse Over  ${BAB_BK_FIT}
	SeleniumLibrary.Element Should Contain  xpath://div[@class='flex-center-content']//div[2]//div[1]//div[2]//button[1]//div[1]//span[1]  Fit Image To Box
	SeleniumLibrary.Click Element  ${BAB_BK_FIT}


select_base_job_options__blank_envelopes
	[Arguments]	${envelopes}=No Blank Envelopes
	# TODO: Implement action: Select ${envelopes}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${envelopes}


# From Product Builder add your product to the cart
click_add_to_cart
	# TODO: Implement action: Click Add To Cart
	# SeleniumLibrary.Scroll Element Into View	${PB_ADD_TO_CART}
	extra_keywords.Scroll To Element  ${PB_ADD_TO_CART}
	# SeleniumLibrary.Wait Until Element Is Enabled  ${PB_ADD_TO_CART}
	# SeleniumLibrary.Wait Until Page Does Not Contain Element  id:lightbox_bg
	SeleniumLibrary.Click Element	${PB_ADD_TO_CART}
	# TODO: Implement result: Your Shopping Cart  is visible
	SeleniumLibrary.Wait Until Page Contains  Your Shopping Cart  timeout=120
	# SeleniumLibrary.Page Should Contain	Your Shopping Cart


# Checks Reward Points and Subtotal after a product is configured in Product Builder
validate_product_builder__reward_points_and_subtotal
	[Arguments]	${reward_points}=	${subtotal}=
	# TODO: Implement action: Reward Points:
	# TODO: Implement result: ${reward_points}
	# TODO: Implement action: Subtotal:
	# TODO: Implement result: ${subtotal}


log_out_of_trade
	# TODO: Implement action: Click Logout


# Login using Trade info
login
	[Arguments]	${username}=	${password}=	${expected}=
	# TODO: Implement action: Input Username: ${username}
	SeleniumLibrary.Input Text	${IX_LOGIN_NAME}	${username}
	# TODO: Implement action: Input Password: ${password}
	SeleniumLibrary.Input Password	${IX_LOGIN_PW}	${password}
	# TODO: Implement action: Click Log In
	SeleniumLibrary.Click Button	${IX_LOGIN}
	BuiltIn.Run Keyword And Ignore Error  SeleniumLibrary.Handle Alert
	# TODO: Implement result: Page Should Contain ${expected}
	SeleniumLibrary.Page Should Contain	${expected}


select_base_job_options__clear_case_edge_color
	[Arguments]	${clear_case}=	${edge_color}=
	# TODO: Implement action: Select Clear Case: ${clear_case}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${clear_case}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Edge Color: ${edge_color}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']  ${edge_color}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Accepts Disclaimer in Product Builder for Raised Spot UV and Variable Data
accept_disclamer
	# TODO: Implement action: Verify Disclamer Is visible
	SeleniumLibrary.Wait Until Element Is Enabled  xpath://div[@id='disclaimer']
	# TODO: Implement action: Click I Understand
	SeleniumLibrary.Click Element  xpath://input[@id='accept_disclaimer']


select_base_job_options__raised_spot_uv
	[Arguments]	${height}=50 Microns	${side}=
	# TODO: Implement action: Select Raised Spot UV Height: ${height}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${height}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Spot UV Side: ${side}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']  ${side}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__bundling
	[Arguments]	${bundling_option}=No Bundling Services
	# TODO: Implement action: Select Bundling: ${bundling_option}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${bundling_option}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__t_shirt
	[Arguments]	${size}=
	# TODO: Implement action: Select T-Shirt Size: ${size}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${size}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__binding_edge
	[Arguments]	${edge}=Long Edge
	# TODO: Implement action: Select Binding Edge: ${edge}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${edge}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__drill_hole
	[Arguments]	${drill_hole}=
	# TODO: Implement action: Select Drill Hole: ${drill_hole}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']  ${drill_hole}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Found In Counter Cards
select_base_job_options__easel
	# TODO: Implement action: Select Easel: 5\" Double Wing Easel
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	5\" Double Wing Easel
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__window
	[Arguments]	${window}=
	# TODO: Implement action: Select Window Options: ${window}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${window}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__numbering_perforation
	[Arguments]	${numbering}=No Numbering	${perforation}=No Perforation
	# TODO: Implement action: Select Numbering: ${numbering}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${numbering}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Numbering: ${perforation}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']	${perforation}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__folding
	[Arguments]	${fold}=
	# TODO: Implement action: Select Folding Options: ${fold}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${fold}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__blank_envelopes_gift_card_slits_scoring
	[Arguments]	${envelope}=No Blank Envelopes	${slits}=No Gift Card Slits	${scoring}=Score in half
	# TODO: Implement action: Select Blank Envelopes: ${envelope}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${envelope}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Gift Card Slits: ${slits}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']	${slits}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Scoring Options: ${scoring}
	SeleniumLibrary.Click Element  xpath://select[@id='options[2]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[2]']	${scoring}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__numbering
	[Arguments]	${numbering}=
	# TODO: Implement action: Select Numbering: ${numbering}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${numbering}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__radius_of_corners
	[Arguments]	${radius}=Rounded 1/4\"
	# TODO: Implement action: Select Radius of Corners: ${radius}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${radius}
	# SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__pockets_bc_slits
	[Arguments]	${pocket}=1 Pocket on the Left (Front) Side	${slit}=No Business Card Slits
	# TODO: Implement action: Select Pockets: ${pocket}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${pocket}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Business Card Slit: ${slit}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']	${slit}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Found with Roll Labels
select_base_job_options__lamination_shape_unwind
	[Arguments]	${lamination}=No Lamination	${shape}=Circle	${unwind}=Not Important
	# TODO: Implement action: Select Lamination: ${lamination}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${lamination}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Shape: ${shape}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']	${shape}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Unwind Options: ${unwind}
	SeleniumLibrary.Click Element  xpath://select[@id='options[2]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[2]']	${unwind}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


select_base_job_options__scoring
	[Arguments]	${scoring}=No Scoring
	# TODO: Implement action: Select Scoring Options: ${scoring}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${scoring}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Can be found in stickers
select_base_job_options__shape
	[Arguments]	${shape}=
	# TODO: Implement action: Select Shape: ${shape}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${shape}
	# SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


# Can be found in Tear Off Cards
select_base_job_options__die_cut_perforation
	[Arguments]	${die}=Arch Die Cut	${perf}=Perforation 2\" from Bottom
	# TODO: Implement action: Select Die Cut Options: ${die}
	SeleniumLibrary.Click Element  xpath://select[@id='options[0]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[0]']	${die}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	# TODO: Implement action: Select Perforation: ${perf}
	SeleniumLibrary.Click Element  xpath://select[@id='options[1]']
	SeleniumLibrary.Select From List By Label  xpath://select[@id='options[1]']	${perf}
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}


upload_bad_image_in_buy_a_batch
	[Arguments]     ${file_name}=
	# TODO: Implement action: Upload Front Image using ${file_name}
	SeleniumLibrary.Set Focus To Element  ${BAB_UPLOAD_FRONT}
	${file}=	OperatingSystem.Normalize Path	${EXECDIR}/Test_Files/${file_name}
	SeleniumLibrary.Choose File  ${BAB_UPLOAD_FRONT}  ${file}
	SeleniumLibrary.Wait Until Element Is Not Visible  ${BAB_IMAGE_LOADING}	timeout=120
	SeleniumLibrary.Element Should Contain  xpath://span[@class='red']  Invalid File Type


apply_coupon_code
	# TODO: Implement action: Input Coupon Code: TEST4SYNC
	SeleniumLibrary.Input Text  ${SC_COUPON_INP}  TEST4SYNC
	# TODO: Implement action: Click Apply Coupon Code
	SeleniumLibrary.Click Element  ${SC_COUPON}
	# TODO: Implement result: Verify locator says You save
	SeleniumLibrary.Wait Until Element Contains  ${SC_COUPON_SAVING}  You save

# Additional Options section for PDF Proof and Samples
select_additional_options
	# TODO: Implement action: Verify Text is available: PDF Proofs ? (add $5.00 per job)
	SeleniumLibrary.Element Should Contain  ${PB_PROOFS}	PDF Proofs	ignore_case=True
	SeleniumLibrary.Element Should Contain  ${PB_PROOFS}   (add $5.00 per job)
	# TODO: Implement action: Verify Text is available: Samples of Completed Job ? (add $9.99 per job)
	SeleniumLibrary.Element Should Contain  ${PB_SAMPLES}   Samples of Completed Job	ignore_case=True
	SeleniumLibrary.Element Should Contain  ${PB_SAMPLES}   (add $9.99 per job)
	# TODO: Implement action: Select Yes, send me PDF Proof
	SeleniumLibrary.Click Element  ${PB_PROOFS_YES}
	# TODO: Implement action: Select Yes, please send me samples
	SeleniumLibrary.Click Element  ${PB_SAMPLES_YES}

validate_additional_options
	[Arguments]     ${string}=
	# TODO: Implement action: Validate shopping cart contains: ${string}
	SeleniumLibrary.Page Should Contain  ${string}

switch_to_window_window_name_that_contains_expected
	[Arguments]     ${window_name}=		${expected}=
	SeleniumLibrary.Switch Window  locator=${window_name}	 timeout=60
	BuiltIn.Sleep  1  reason=Selenium Reasons
	SeleniumLibrary.Wait Until Page Contains  ${expected}

# /signup.php fills up form
fill_up_registration_form
	input_trade_account_information 	4over_Test      Keyser  Söze
	input_default_shipping_information      4over_Test      Keyser  Söze
	check_for_california_resellers_warning
	check_if_local_delivery_and_pickup_is_available
	input_default_billing_information

validate_product_builder_subtotal
	[Arguments]     ${sub}=
	# TODO: Implement action: Verify subtotal is ${sub}
	# SeleniumLibrary.Wait Until Element Is Visible  ${SUBTOTAL}
	BuiltIn.Sleep  3  reason=icon takes too long
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	SeleniumLibrary.Wait Until Element Is Not Visible  xpath://*[@id="lightbox_content"]/div	timeout=120
	SeleniumLibrary.Wait Until Element Is Not Visible	${PB_LOADING}
	SeleniumLibrary.Wait Until Element Is Not Visible  ${SUBOTAL_SPIN}

click_on_next_step

select_quantity_and_turn_around_time
	[Arguments]     ${quantity}=    ${turn_around_time}=
	# TODO: Implement action: Select Quantity:- ${Quantity}
	# TODO: Implement action: Select  TURN-AROUND: ${Turn_Around_Time}

verify_shipping_method
	[Arguments]     ${element}=xpath://tr[3]/td[2]/div/p[5]		${method}=
	# TODO: Implement action: Verify Shipping Method:
	# TODO: Implement result: ${shipping_method}
	SeleniumLibrary.Element Should Contain	${element}	${method}

verify_production_facility
	[Arguments]     ${element}=xpath://tr[3]/td[2]/div/p[11]        ${facility}=
	# TODO: Implement action: Verify Production Facility:
	# TODO: Implement result: ${production_facility}
	SeleniumLibrary.Element Should Contain	${element}	${facility}

# Checks Subtotal and Reward Points in Shopping Cart
verify_subtotal_and_rewards
	[Arguments]     ${element_points}=id:rewards_total
	...				${element_subtotal}=id:total_subtotal
	...				${points}=
	...				${subtotal}=
	# TODO: Implement action: Verify Total Reward Points:
	# TODO: Implement result: ${rewards_point}
	BuiltIn.Run Keyword And Ignore Error	SeleniumLibrary.Element Should Contain  ${element_points}  ${points}
	# TODO: Implement action: Verify Subtotal:
	# TODO: Implement result: ${subtotal}
	BuiltIn.Run Keyword And Ignore Error	SeleniumLibrary.Element Should Contain  ${element_subtotal}  ${subtotal}

verify_cart_discount
	[Arguments]     ${element_qty}=xpath://tfoot//tr[2]//td[2]
	...				${element_discount}=id:order_discount
	...				${quantity}=
	...				${order}=
	# TODO: Implement action: Verify Quantity Discount:
	# TODO: Implement result: ${quantity_discount}
	SeleniumLibrary.Element Should Contain  ${element_qty}  ${quantity}
	# TODO: Implement action: Verify Order Discount:
	# TODO: Implement result: ${order_discount}
	SeleniumLibrary.Element Should Contain  ${element_discount}  ${order}

verify_shipping_and_processing_total
	[Arguments]     ${element}=id:total_shipping    ${method}=
	# TODO: Implement action: Verify Shipping & Processing Total:
	# TODO: Implement result: IF ${method} == FREE Ground Shipping expect $0.00
	# TODO: Implement result: ELSEIF ${method} == Pickup expect $0.00
	# TODO: Implement result: ELSEIF ${method} == Free Local Delivery expect $0.00
	# TODO: Implement result: ELSE Expect != 0
	BuiltIn.Run Keyword If  "${method}" == "FREE Ground Shipping"	SeleniumLibrary.Element Should Contain  ${element}  $0.00
	...		ELSE IF		"${method}" == "Pickup"	SeleniumLibrary.Element Should Contain  ${element}  $0.00
	...		ELSE IF		"${method}" == "Free Local Delivery"	SeleniumLibrary.Element Should Contain  ${element}  $0.00
	...		ELSE	SeleniumLibrary.Element Should Not Contain  ${SC_SHIP_PROC}  $0.00

verify_cart_total_is_not_zero
	[Arguments]     ${element}=id:total_price
	# TODO: Implement action: Verify Total is not $0.00
	SeleniumLibrary.Element Text Should Not Be  ${element}   $0.00

validate_shopping_cart_elements
	[Arguments]     ${element_cont}=class:continueshop_btn
	...				${element_clear}=class:clearcart_btn
	...				${element_coupon}=id:couponDisplay
	...				${element_sh_cart}=xpath://div[contains(text(),'Your Shopping Cart')]
	...				${element_prom_code}=xpath://div[contains(text(),'Promotional Codes')]
	...				${element_checkout}=xpath://div[contains(text(),'Checkout')]
	# TODO: Implement action: Validate \"Continue Shopping\" Button is available
	# TODO: Implement action: Validate \"Clear Cart\" Button is available
	# TODO: Implement action: Validate \"Apply Coupon Code\" Button is available
	# TODO: Implement action: Validate the 3 Sections in Your Shopping Cart
	# TODO: Implement result: Your Shopping Cart
	# TODO: Implement result: Promotional Codes
	# TODO: Implement result: Checkout
	SeleniumLibrary.Element Should Be Visible	${element_cont}
	SeleniumLibrary.Element Should Be Visible	${element_clear}
	SeleniumLibrary.Element Should Be Visible	${element_coupon}
	SeleniumLibrary.Element Should Be Visible	${element_sh_cart}
	SeleniumLibrary.Element Should Be Visible	${element_prom_code}
	SeleniumLibrary.Element Should Be Visible	${element_checkout}

# Trade account setup
input_trade_account_information
	[Arguments]     ${company}=4over_Test   ${first_name}=Keyser    ${last_name}=Söze
	# TODO: Implement action: Under Trade Account Information
	# TODO: Implement action: Input Login Email Address:
	${email}=		String.Generate Random String  8   [LETTERS]
	BuiltIn.Log To Console  ${email}@4over.com
	BuiltIn.Log  ${email}@4over.com
	SeleniumLibrary.Input Text  ${SU_EMAIL}  ${email}@4over.com
	# TODO: Implement action: Input Password:
	SeleniumLibrary.Input Password  ${SU_PW}  4over123
	# TODO: Implement action: Input Retype Password:
	SeleniumLibrary.Input Password  ${SU_PW2}  4over123
	# TODO: Implement action: Input Company: ${company}
	SeleniumLibrary.Input Text  ${SU_COMPANY}  ${company}
	# TODO: Implement action: Input Main Contact First Name: ${first_name}
	SeleniumLibrary.Input Text  ${SU_CONTACT_FN}   ${first_name}
	# TODO: Implement action: Input Main Contact Last Name: ${last_name}
	SeleniumLibrary.Input Text  ${SU_CONTACT_LN}   ${last_name}
	# TODO: Implement action: Select Business Type: Printer
	# SeleniumLibrary.Click Element  ${SU_BUS_TYPE}
	SeleniumLibrary.Select From List By Label	${SU_BUS_TYPE}	Printer
	# TODO: Implement action: Input Resell number/Trade ID:
	# TODO: Implement action: Select How did you hear about us?: Online Search
	# SeleniumLibrary.Click Element  ${SU_HEAR}
	SeleniumLibrary.Select From List By Label  ${SU_HEAR}  Online Search
	# TODO: Implement action: Accept Terms Of Use
	SeleniumLibrary.Click Element  ${SU_TERMS}

# Default info when Registering a new account
input_default_shipping_information
	[Arguments]     ${company}=4over_Test   ${first_name}=Keyser    ${last_name}=Söze
	# TODO: Implement action: Under Default Shipping Information
	# TODO: Implement action: Input Company: ${company}
	SeleniumLibrary.Input Text  ${SU_COMPANY_SHIP}  ${company}
	# TODO: Implement action: Input First Name: ${first_name}
	SeleniumLibrary.Input Text  ${SU_FN_SHIP}  ${first_name}
	# TODO: Implement action: Input Last Name: ${last_name}
	SeleniumLibrary.Input Text  ${SU_LN_SHIP}  ${last_name}
	# TODO: Implement action: Input Physical Address: 1225 Los Angeles Street
	SeleniumLibrary.Input Text  ${SC_ADDRESS}  1225 Los Angeles Street
	# TODO: Implement action: Input City: Glendale
	SeleniumLibrary.Input Text  ${SU_CITY}  Glendale
	# TODO: Implement action: Select Country: United States
	# SeleniumLibrary.Click Element  ${SU_COUNTRY}
	SeleniumLibrary.Select From List By Label  ${SU_COUNTRY}  United States
	# TODO: Implement action: Select State: California
	# SeleniumLibrary.Click Element  ${SU_STATE}
	SeleniumLibrary.Select From List By Label  ${SU_STATE}  California
	# TODO: Implement action: Input ZIP Code: 91202
	SeleniumLibrary.Input Text  ${SU_ZIP}  91202
	# TODO: Implement action: Input Phone: 8777822737
	SeleniumLibrary.Input Text  ${SU_PHONE}  8777822737

# With A California Address a Warning is visible
check_for_california_resellers_warning
	# TODO: Implement action: Verify Attention California Resellers: is visible
	SeleniumLibrary.Wait Until Element Is Visible  ${SU_CA_RESELL}
	SeleniumLibrary.Element Should Be Visible  ${SU_CA_RESELL}

# Shows you qualify for Local Delivery and PIckup
check_if_local_delivery_and_pickup_is_available
	# TODO: Implement action: Verify You qualify for Local Delivery! is visible
	SeleniumLibrary.Wait Until Element Is Visible  ${SU_FREE_DEL}
	SeleniumLibrary.Element Should Be Visible  ${SU_FREE_DEL}
	# TODO: Implement action: Verify You qualify for Pickup! is visibleSeleniumLibrary.Element Should Be Visible  ${SU_FREE_DEL}
	SeleniumLibrary.Wait Until Element Is Visible  ${SU_PICKUP}
	SeleniumLibrary.Element Should Be Visible  ${SU_PICKUP}

# Enables "Same as Shipping"
input_default_billing_information
	# TODO: Implement action: Click on Same as Shipping
	SeleniumLibrary.Click Element  ${SU_SAME_SHIP}
	# TODO: Implement action: Click on Continue
	SeleniumLibrary.Click Element  ${SU_CONT}
	# TODO: Implement result: Page should contain \"Thank you for registering with 4over!\"
	SeleniumLibrary.Handle Alert
	SeleniumLibrary.Wait Until Page Contains  Thank you for registering with 4over  timeout=10