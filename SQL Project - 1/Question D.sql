/* Question D : Who were the top 5 largest lenders for corporate purchases?*/
SELECT COALESCE(sfrpurchases_data.FIRST_MTG_LENDER_NAME), sfrpurchases_data.SALE_AMT
FROM sfrpurchases.sfrpurchases_data
WHERE (sfrpurchases_data.BUYER_BORROWER1_CORP_IND IN ('Y')) AND (sfrpurchases_data.FIRST_MTG_LENDER_NAME NOT IN (''))
ORDER BY sfrpurchases_data.SALE_AMT DESC
LIMIT 5;
/*
Result :
-> TOP 5 LARGEST LENDERS FOR CORPORATE PURCHASES
   1. MORGAN STANLEY PRIVATE BANK NA (SALE_AMT : 1619311818)
   2. RIVERBEND FUNDING LLC (SALE_AMT : 640000000)
   3. CITY NATIONAL BANK (SALE_AMT : 431803790)
   4. EASY STREET CAPITAL CA LLC (SALE_AMT : 305202918)
   5. UIF CORPORATION (SALE_AMT : 200530000)
*/