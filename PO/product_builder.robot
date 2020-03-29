*** Settings ***
Library		SeleniumLibrary		run_on_failure=NONE

*** Variables ***
${PB_LOADING}               id:loadwheel
# ----------------------------------------------------------------------
# PRIMARY ATTRIBUTES
# ----------------------------------------------------------------------
${PB_COLOR}                 id:color
${PB_RUNSIZE}               id:runsize
${PB_TURNAROUND}            id:tat
# ----------------------------------------------------------------------
# ADDITIONAL ATTRIBUTES
# ----------------------------------------------------------------------
${PB_ADD_OPT}               xpath://div[@id='proofsamp']//div[@id='blue']
${PB_SAMPLES}               xpath://div[@class='samps']
${PB_SAMPLES_YES}           id:option_samp_yes
${PB_SAMPLES_NO}            id:option_samp_no
${PB_PROOFS}                id:pdf-proofs
${PB_PROOFS_YES}            id:option_pdf_yes
${PB_PROOFS_NO}             id:option_pdf_no

# ----------------------------------------------------------------------
# PRINT SET DETAILS
# ----------------------------------------------------------------------
${PB_SETS_INPUT}            id:set-qty-input-1
${PB_GENERATE_SETS}         id:group-changer-1


# ----------------------------------------------------------------------
# PRINT SET DETAILS
# ----------------------------------------------------------------------
${PB_ADD_SET}               id:add_group_btn
${PB_ADD_TO_CART}           id:continue_btn
${PB_DEFAULT_SHIP}          id:group_1_ship_type_EQ_BILL
${PB_DELIVERY}              id:group_1_ship_type_select
${PB_DROPSHIP}              id:group_1_ship_type_DROP
${PB_DROPSHIP_VALUE}        DROP
${PB_SET_NAME}              id:group1prefix
${PB_SHIPPING}              id:group_1_shipping_select
${PB_LOC_TXT}               id:group_1_facility_i
&{PB_ADDRESS_BOOK}          Toronto=id:abook_6902934
...                         Moonachie=id:abook_6902897
...                         Dayton=id:abook_6902876
...                         Orlando=id:abook_6902880
...                         Arlington=id:abook_6902867
...                         Pheonix=id:abook_6902900
...                         Seattle=id:abook_6902863
...                         Salt_Lake_City=id:abook_6903206
...                         Los_Angeles=id:abook_7068813
${PB_ADDRESS_NEXT}          xpath://a[contains(text(),'next ->')]
${PB_GROUP_SHIP}            group_1_group_ship_rd
${PB_DM_FEE}                id:direct-mailing-fee-1
# ----------------------------------------------------------------------
# BASE JOB OPTIONS
# ----------------------------------------------------------------------
${PB_BUNDLING}              id:options[0]
${PB_MAIL_SERV}             id:options[1]
${PB_RC_RADIUS}             id:options[0]
${PB_RC}                    id:options[1]
${PB_SCORING}               id:options[2]
${PB_SHRINK}                id:options[2]
${PB_FOIL}                  id:options[0]

# ----------------------------------------------------------------------
# SUBTOTAL
# ----------------------------------------------------------------------

${SUBTOTAL}                 id:subby
${SUBOTAL_SPIN}             xpath://img[@src='/images/loadAnim3.gif']







