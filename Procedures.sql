CREATE OR REPLACE PROCEDURE CALCULATE_SUBTOTAL(
    P_ORDER_ID IN ORDERS.ORDER_ID%TYPE,
    P_TOTAL_COST OUT NUMBER)
AS
BEGIN
    SELECT SUM( product_price(product_id) * quantity)
    INTO P_TOTAL_COST
    FROM order_items
    WHERE ORDER_ID = P_ORDER_ID;    
END CALCULATE_SUBTOTAL;


CREATE OR REPLACE PROCEDURE CALCULATE_SHIP_COST(
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


CREATE OR REPLACE PROCEDURE update_customer_info (
    p_customer_id IN NUMBER,
    new_name IN VARCHAR2 DEFAULT NULL,
    new_email IN VARCHAR2 DEFAULT NULL    
)
AS
BEGIN
    IF new_name IS NOT NULL THEN
        UPDATE customers
        SET customer_name = new_name
        WHERE customer_id = p_customer_id;
    END IF;
    
    IF new_email IS NOT NULL THEN
        UPDATE customers
        SET email = new_email
        WHERE customer_id = p_customer_id;
    END IF;
        
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_order_status (
    p_order_id IN ORDERS.ORDER_ID%TYPE,
    updated_status_id IN ORDER_STATUS.STATUS_ID%TYPE
)
AS
    lv_status_id NUMBER;
BEGIN

    UPDATE orders
    SET status_id = updated_status_id
    WHERE order_id = p_order_id;
    
    COMMIT;
END;


