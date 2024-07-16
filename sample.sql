select
AGENCY,  -- No cache unique 1
TERM,
MBS_ISSUE_DATE_YEAR, 
MBS_COUPON_25BP, 
DELINQUENCY,
FICO_50, 
MBS_COUPON_TYPE, 
ORIGINAL_LOAN_BALANCE_50K,
count(LOAN_SEQUENCE_NUMBER),
sum(ORIGINAL_LOAN_AMT) ,
sum(FIRST_TIME_HOMEBUYER) * 100.00 / count(LOAN_SEQUENCE_NUMBER),
sum(MODIFIED) * 100.00 / count(LOAN_SEQUENCE_NUMBER),
sum(TPO) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(BROKER) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(CORRESPONDENT) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(REFI) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(PURCHASE) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(OTHER_REFINANCE) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(CASH_OUT) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(OWNER_OCCUPIED) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(SECOND_HOME) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(INV) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(CONDO) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(COOP) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(PUD) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(MANUFACTURED_HOME) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum(SINGLE_FAMILY) * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum("1_UNITS") * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum("2_UNITS") * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum("3_UNITS") * 100.00 / count(LOAN_SEQUENCE_NUMBER) ,
sum("4_UNITS") * 100.00 / count(LOAN_SEQUENCE_NUMBER) 
from test_data_4msr
where SERVICER_NAME = 'MATRIX FINANCIAL SERVICES CORPORATION'
group by AGENCY, 
TERM,
MBS_ISSUE_DATE_YEAR, 
MBS_COUPON_25BP, 
DELINQUENCY,
FICO_50, 
MBS_COUPON_TYPE, 
ORIGINAL_LOAN_BALANCE_50K