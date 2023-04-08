
CREATE OR REPLACE PACKAGE OrderManagement_PP
IS
gv_total_cost NUMBER;

FUNCTION PRODUCT_PRICE 
(
    product_id IN INVENTORY.PRODUCT_ID%TYPE
)
RETURN INVENTORY.PRICE%TYPE;

FUNCTION CALCULATE_TOTAL_COST
(
    order_id IN ORDERS.ORDER_ID%TYPE,
    delivery_city IN ADDRESSES.CITY%TYPE    
)
RETURN NUMBER;

PROCEDURE CALCULATE_SUBTOTAL(
    P_ORDER_ID IN ORDERS.ORDER_ID%TYPE,
    P_TOTAL_COST OUT NUMBER);
PROCEDURE CALCULATE_SHIP_COST(
    p_city IN ADDRESSES.CITY%TYPE,
    p_ship_cost OUT NUMBER);
END;

CREATE OR REPLACE PACKAGE BODY OrderManagement_PP
IS
PROCEDURE CALCULATE_SUBTOTAL(
    P_ORDER_ID IN ORDERS.ORDER_ID%TYPE,
    P_TOTAL_COST OUT NUMBER)
AS
BEGIN
    SELECT SUM( product_price(product_id) * quantity)
    INTO P_TOTAL_COST
    FROM order_items
    WHERE ORDER_ID = P_ORDER_ID;    
END CALCULATE_SUBTOTAL;

PROCEDURE CALCULATE_SHIP_COST(
    p_city IN ADDRESSES.CITY%TYPE,
    p_ship_cost OUT NUMBER)
AS
    lv_default_cost NUMBER:= 2;
BEGIN
    IF p_city = 'scarborough' THEN
        p_ship_cost := lv_default_cost;
    ELSIF p_city= 'markham' THEN
        p_ship_cost := lv_default_cost + 2;
    ELSIF p_city= 'toronto' THEN
        p_ship_cost := lv_default_cost + 4;
    ELSIF p_city= 'vaughan' THEN
        p_ship_cost := lv_default_cost + 6;
    ELSIF p_city= 'etobicoke' THEN
        p_ship_cost := lv_default_cost + 8;
    ELSIF p_city= 'pshawa' THEN
        p_ship_cost := lv_default_cost + 10;
    ELSIF p_city= 'mississauga' THEN
        p_ship_cost := lv_default_cost + 12;        
    ELSIF p_city= 'brampton' THEN
        p_ship_cost := lv_default_cost + 14;        
    ELSIF p_city= 'hamilton' THEN
        p_ship_cost := lv_default_cost + 16; 
    ELSE
        p_ship_cost := lv_default_cost + 18;
    END IF;
END CALCULATE_SHIP_COST;

FUNCTION PRODUCT_PRICE 
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

FUNCTION CALCULATE_TOTAL_COST
(
    order_id IN ORDER.ORDER_ID%TYPE,
    delivery_city IN ADDRESS.CITY%TYPE    
)
RETURN NUMBER
AS
    lv_subtotal NUMBER;
    lv_ship_cost NUMBER;
BEGIN
    CALCULATE_SUBTOTAL(order_id,lv_subtotal);
    CALCULATE_SHIP_COST(delivery_city,lv_ship_cost);
    gv_total_cost : = lv_subtotal + lv_ship_cost;
    RETURN gv_total_cost;
END;

END;
