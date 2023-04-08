CREATE OR REPLACE FUNCTION PRODUCT_PRICE 
(
    product_id IN INVENTORY.PRODUCT_ID%TYPE
)
RETURN INVENTORY.PRICE%TYPE
AS
    lv_prod_price INVENTORY.PRICE%TYPE;
BEGIN
    SELECT price
    INTO lv_prod_price
    FROM INVENTORY
    WHERE product_id = product_id;
    
RETURN lv_prod_price; 
END;


CREATE OR REPLACE FUNCTION CALCULATE_TOTAL_COST
(
    order_id IN ORDERS.ORDER_ID%TYPE,
    delivery_city IN ADDRESSES.CITY%TYPE    
)
RETURN NUMBER
AS
    lv_subtotal NUMBER;
    lv_ship_cost NUMBER;
    lv_total_cost NUMBER;
BEGIN
    CALCULATE_SUBTOTAL(order_id,lv_subtotal);
    CALCULATE_SHIP_COST(delivery_city,lv_ship_cost);
    lv_total_cost : = lv_subtotal + lv_ship_cost;
    RETURN lv_total_cost;
END;
