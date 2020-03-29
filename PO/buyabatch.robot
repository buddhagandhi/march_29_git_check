*** Settings ***
Library		SeleniumLibrary		run_on_failure=NONE
Library		OperatingSystem

*** Variables ***
# Index
${BUYABATCH}    xpath://a[contains(text(),'Buy A Batch')]
${IFRAME}   xpath://iframe[@id='grandbatcherIFrame']
${BAB_WELCOME}  xpath://button[@class='welcome_popup_button']

# Product Builder
${BAB_FLUTE_DIRECTION}  xpath://div[@id='choose_options']//div[@id='blue']
${BAB_PRODUCT_CONTAINER}    xpath://div[@id='chosen_product_container']
${BAB_PRODUCT_DETAIL}   xpath://div[@id='product_details']//div[@id='blue']

# Summary
${BAB_CONTINUE}     xpath://div[@class='item cart-header']
${BAB_NUM_SIGNS}        xpath://div[@class='subtext']
${BAB_PRODUCT_SIZE_SUM}     xpath:/html/body/div[1]/div/div[1]/div[1]/div[2]/div[2]

# ${quantity} = //div[@class='item quantity']//div[2]
${BAB_SHEET_COUNT}      //div[@class='detail'][contains(text(),'sheet')]
${BAB_TOTAL}        xpath://div[@class='item total']//div[@class='right']//div[1]
${BAB_TURNAROUND_TIME}      xpath://body//div[5]

# Uplaod Section
${BAB_ADD_IMAGE_SET}	xpath://button[@class='button is-danger is-outlined']
${BAB_DOUBLESIDED}	xpath://label[@class='toggle']
${BAB_IMAGE_LOADING}	xpath://div[@class='is-loading']
${BAB_NEXT_STEP}	xpath://div[@class='next-step-btn']
${BAB_PRODUCT_SIZE}	xpath://div[@class='canvas-top-bar-container box']//div[2]//div[2]//select[1]
${BAB_QTY_DESC}	xpath://div[@class='item quantity']//div[2]
${BAB_SET_QTY}	xpath://input[@placeholder='quantity']
${BAB_TOTAL_PRICE}	xpath://div[@class='total-price']
# ${upload_back}	xpath://label[contains(text(),'Click Here to Upload Back Image')]
# ${upload_front}	xpath://label[contains(text(),'Click Here to Upload Front Image')]
${BAB_UPLOAD_BACK}	xpath://div[@class='flex-center-content']//div[2]//input[1]
${BAB_UPLOAD_FRONT}	xpath://div[@class='box dropzone-container']//div[1]//input[1]

# Image Set 1
${BAB_QTY_DECREASE}	xpath://div[@class='quantity-btn decreasBAB_e']
${BAB_QTY_INCREASE}	xpath://div[@class='quantity-btn increasBAB_e']

# Front
${BAB_FR_CENTER}	xpath://div[@class='image-control-container has-text-centered']//div[1]//div[1]//div[1]//button[1]
${BAB_FR_FIT}	xpath://div[@class='image-control-container has-text-centered']//div[1]//div[1]//div[2]//button[1]

# Back
${BAB_BK_CENTER}	xpath://div[@class='flex-center-content']//div[2]//div[1]//div[1]//button[1]
${BAB_BK_FIT}	xpath://div[@class='flex-center-content']//div[2]//div[1]//div[2]//button[1]

# Files
${12x18}    ${EXECDIR}${/}Test_Files${/}12x18.pdf
${18x12}    ${EXECDIR}${/}Test_Files${/}18x12.pd
${18x24}    ${EXECDIR}${/}Test_Files${/}18x24.pdf
${24x18}    ${EXECDIR}${/}Test_Files${/}24x18.pdf
${24x24}    ${EXECDIR}${/}Test_Files${/}24x24.pdf
${24x36}    ${EXECDIR}${/}Test_Files${/}24x36.pdf
${24x6}     ${EXECDIR}${/}Test_Files${/}24x6.pdf
${36x24}    ${EXECDIR}${/}Test_Files${/}36x24.pdf