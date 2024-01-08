SELECT CAR_ID,
MAX(
CASE
    WHEN '2022-10-16' BETWEEN CAR.START_DATE AND CAR.END_DATE THEN '대여중'
    ELSE '대여 가능'
    END) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS CAR
GROUP BY CAR_ID
ORDER BY CAR_ID DESC