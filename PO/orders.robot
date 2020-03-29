*** Variables ***
${AWAITING_PROOF_APPROVAL}	Awaiting Preview Approval
${COMPLETED_JOBS}	        Completed Jobs
${JOB_STATUS}	            Job Status
${ORDER_DETAILS}	        xpath://div[@id='completed_list']//div[3]//div[6]//a[1]
${ORDERS_BACK}	            xpath://div[@class='od_bl']//a[@title='Back To List']
${ORDERS_CANCEL}            xpath://a[@class='delete' and @title='Cancel Job']
${CANCEL_REASON}            id:cancel_reason
${CANCEL_OK}                xpath://input[@type = 'button' and @value = 'Ok']
${ORDERS_ACTIVE}            xpath://h2[@class='rec_header']
