SELECT C1.CART_ID
FROM CART_PRODUCTS as C1
inner join CART_PRODUCTS as C2
on C1.CART_ID = C2.CART_ID
WHERE C1.NAME = 'Milk' AND C2.NAME = 'Yogurt'
ORDER BY C1.CART_ID