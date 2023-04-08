-- Testing the functions and procedures assosciated with calculating the subtotal, shipping cost, and totalcost
-- Procedures: CALCULATE_SUBTOTAL, CALCULATE_SHIP_COST
-- Functions: CALCULATE_TOTAL_COST
-- The procedure CALCULATE_SUBTOTAL in turn uses the function PRODUCT_PRICE.
DECLARE
    lv_ship_cost NUMBER;
    lv_subtotal INVENTORY.PRICE%TYPE;
    lv_total_cost NUMBER;
BEGIN
    CALCULATE_SUBTOTAL(10002,lv_subtotal);
    CALCULATE_SHIP_COST('scarborough',lv_ship_cost);
    DBMS_OUTPUT.PUT_LINE('SubTotal for the order 10002: ' ||lv_subtotal);
    DBMS_OUTPUT.PUT_LINE('Shipping cost for the location: $' ||lv_ship_cost);
    
    lv_total_cost:= CALCULATE_TOTAL_COST(10002,'scarborough');
    DBMS_OUTPUT.PUT_LINE('Total cost for the order 10002: $' ||lv_total_cost);
END;


-- Testing code for the Procedure UPDATE_CUSTOMER_INFO
DECLARE
    lv_customer_id CUSTOMERS.CUSTOMER_ID%TYPE:=20231;
    
    lv_out_customer_id CUSTOMERS.CUSTOMER_ID%TYPE;
    lv_out_customer_email CUSTOMERS.EMAIL%TYPE;
BEGIN

    SELECT customer_id, email 
    INTO lv_out_customer_id,lv_out_customer_email
    FROM customers
    WHERE customer_id = lv_customer_id;

    DBMS_OUTPUT.PUT_LINE('Customer Email before updation');
    DBMS_OUTPUT.PUT_LINE('Customer Id: ' ||lv_out_customer_id);
    DBMS_OUTPUT.PUT_LINE('Customer Email: ' ||lv_out_customer_email);

    UPDATE_CUSTOMER_INFO(
        p_customer_id => lv_customer_id,
        new_email => 'mackhenry@gmail.com'
    );
    
    SELECT customer_id, email 
    INTO lv_out_customer_id,lv_out_customer_email
    FROM customers
    WHERE customer_id = lv_customer_id;

    DBMS_OUTPUT.PUT_LINE('');    
    DBMS_OUTPUT.PUT_LINE('Customer Name after updating email');
    DBMS_OUTPUT.PUT_LINE('Customer Id: ' ||lv_out_customer_id);
    DBMS_OUTPUT.PUT_LINE('Updated Customer Email: ' ||lv_out_customer_email);
    
END;


DECLARE
    lv_order_id ORDERS.ORDER_ID%TYPE;
    lv_delivery_city ADDRESS.CITY%TYPE;    
    
BEGIN 

    OrderManagement_PP.CALCULATE_TOTAL_COST(lv_order_id,lv_delivery_city);
    DBMS_OUTPUT.PUT_LINE('TOTAL COST: ' || OrderManagement_PP.gv_total_cost);

END;


