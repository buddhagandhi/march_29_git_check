*** Variables ***
${SU_EMAIL}             xpath://input[@id='form_myaccount_login']
${SU_PW}                xpath://input[@id='form_myaccount_password']
${SU_PW2}               xpath://input[@id='form_myaccount_password2']
${SU_COMPANY}           xpath://input[@id='form_myaccount_company']
${SU_CONTACT_FN}        xpath://input[@id='form_myaccount_name_first']
${SU_CONTACT_LN}        xpath://input[@id='form_myaccount_name_last']
${SU_BUS_TYPE}          xpath://select[@id='form_myaccount_business_type']
${SU_HEAR}              xpath://select[@id='form_my_account_knowledge_source']
${SU_TERMS}             xpath://input[@id='form_myaccount_accept_terms']
${SU_COMPANY_SHIP}      xpath://input[@id='form_myaccount_shipping_company']
${SU_FN_SHIP}           xpath://input[@id='form_myaccount_shipping_name_first']
${SU_LN_SHIP}           xpath://input[@id='form_myaccount_shipping_name_last']
${SC_ADDRESS}           xpath://input[@id='form_myaccount_shipping_address']
${SU_CITY}              xpath://input[@id='form_myaccount_shipping_city']
${SU_COUNTRY}           xpath://select[@id='form_myaccount_shipping_country']
${SU_STATE}             xpath://select[@id='form_myaccount_shipping_state']
${SU_ZIP}               xpath://input[@id='form_myaccount_shipping_zip']
${SU_PHONE}             xpath://input[@id='form_myaccount_shipping_phone']
${SU_CONT}              xpath://input[@id='sign_up_button']
${SU_CA_RESELL}         xpath://div[@id='ca_resell']//h4[@id='error']
${SU_FREE_DEL}          xpath://div[@id='free_delivery']//h4[@id='error']
${SU_PICKUP}            xpath://div[@id='all_delivery']//h4[@id='error']
${SU_SAME_SHIP}         xpath://input[@id='form_myaccount_billing_same_as_shipping']
# ${SU_EMAIL_ACC}         String.Generate Random String   8   [LOWER]@4over.com




