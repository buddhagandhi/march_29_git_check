*** Variables ***
${SC_CONT_SHOPPING}     xpath://a[@class='continueshop_btn']//img
${SC_CLEAR_CART}        xpath://a[@class='clearcart_btn']//img
${SC_COUPON}            xpath://a[@id='couponDisplay']//img
${SC_COUPON_INP}        xpath://input[@id='couponId']
${SC_COUPON_SAVING}     xpath://strong[@id='yousave']
${SC_PBC}               xpath://p[@class='pay']//input[1]
${SC_CC}                xpath://p[@class='pay']//input[2]
${SC_ORDER_ID}          xpath://p[@class='order_id']
${SC_DELETE}            id:lb_continue
${SC_LOC}               xpath://tr[3]/td[2]/div/p[11]
${SC_SHIP_METHOD}       xpath://tr[3]/td[2]/div/p[5]
${SC_SHIP_PROC}         xpath://td[@id='total_shipping']
${SC_JOB_DETAIL}        css:div.order:nth-child(5) table.order:nth-child(2) tbody:nth-child(2) tr.even:nth-child(3) > td.lite:nth-child(2)
${SC_UPLOAD}            xpath://div[@id='uploadart']/a/img
${SC_H_YSC}             xpath://div[contains(text(),'Your Shopping Cart')]
${SC_H_PROMOTIONAL}     xpath://div[contains(text(),'Promotional Codes')]
${SC_H_CHECKOUT}        xpath://div[contains(text(),'Checkout')]
${SC_TOTAL_POINTS}      xpath://span[@id='rewards_total']
${SC_SUBTOTAL}          xpath://td[@id='total_subtotal']
${SC_QTY_DISC}          xpath://tfoot//tr[2]//td[2]
${SC_ORD_DISC}          xpath://td[@id='order_discount']
${SC_TAX}               xpath://td[@id='total_tax']
${SC_TOTAL}             xpath://td[@id='total_price']
# ${SC_PROOF}             xpath://p[contains(text(),'Yes, send me PDF Proof')]
# ${SC_SAMPLE}            xpath://p[contains(text(),'Yes, please send me samples')]
