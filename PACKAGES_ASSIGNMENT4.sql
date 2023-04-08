
CREATE OR REPLACE PACKAGE OrderManagement_PP
IS
PROCEDURE CALCULATE_TOTAL_COST(
    P_ORDER_ID IN NUMBER,
    P_TOTAL_COST OUT NUMBER);
PROCEDURE CALCULATE_SHIP_COST(
    p_city IN VARCHAR,
    p_ship_cost OUT NUMBER);
END;

CREATE OR REPLACE PACKAGE BODY OrderManagement_PP
IS

PROCEDURE CALCULATE_TOTAL_COST(
    P_ORDER_ID IN NUMBER,
    P_TOTAL_COST OUT NUMBER)
AS
BEGIN
    SELECT SUM( product_price(product_id) * quantity)
    INTO P_TOTAL_PRICE
    FROM order_items
    WHERE ORDER_ID = P_ORDER_ID;    
END CALCULATE_TOTAL_COST;

PROCEDURE CALCULATE_SHIP_COST(
    p_city IN VARCHAR,
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

END;