*** Variables ***
${IX_LOGIN_NAME}	id:topLogin
${IX_LOGIN_PW}	    id:topPassword
${IX_LOGIN}	        xpath://input[@type='image']

${IX_ORDERS}	    id:fishmenu_pend
${IX_ESTIMATES}	    id:fishmenu_esti
${IX_REWARDS}	    id:fishspan_rewa

${IX_4OVER}         id:logo
${IX_CART}          xpath://img[@src='/images/icons/icon_fullcart_small.png']

&{URL}              dev=https://dev-trade.4over.com/    qa=https://qa-trade.4over.com   staging=https://staging.trade.4over.com     prod=https://trade.4over.com    m2=https://dev-m2-trade.4over.com