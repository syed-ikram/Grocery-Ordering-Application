--Customers
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20231,'Mack Hensley','mackhensley08@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20232, 'Petra Wilkerson', 'petrawilkerson@yahoo.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20233, 'Marcos Flores', 'marcosflores@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20234, 'Rachel Zimmerman', 'rachelzimmerman01@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20235, 'Jonathon Mckenzie', 'jonathonmckenzie@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20236, 'Frederic Oconnor', 'fredericoconnor571@yahoo.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20237, 'Norris Kaiser', 'norriskaiser@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20238, 'Rod Buchanan', 'rodbuchanan13@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20239, 'Lonnie Kennedy', 'lonniekennedy01@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20240, 'Catalina Dean', 'catalinadean11@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20241, 'Nellie Burnett', 'nellieburnett@outlook.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20242, 'Burl Knight', 'burlknight319@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20243, 'Hester Ayers', 'hesterayers205@outlook.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20244, 'Kory Burton', 'koryburton@gmail.com');
INSERT INTO Customers (customer_id, customer_name, email) VALUES (20245, 'Rosario Russo', 'rosariorusso@gmail.com');


--Addresses
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,'20231','Home','12 Eglinton Avenue','Toronto','ON','MD1 5H6');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20231, 'Office', '451 Lawrence Avenue', 'Toronto', 'ON', 'M4C 6L0');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20232, 'Home', '411 Ellesmere Rd', 'Scarborough', 'ON', 'M1G 5K3');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20232, 'Office', '101 York Mills Rd', 'Toronto', 'ON', 'M6X 1F5');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20233, 'Home', '159 Glenforest Rd', 'Toronto', 'ON', 'M5X 4A7');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20234, 'Home', '201 Markham Rd', 'Scarborough', 'ON', 'M9H 4H7');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20235, 'Home', '61 Pachino Blvd', 'Scarborough', 'ON', 'M1R 4J6');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20236, 'Home', '40 Birchmount Rd', 'Scarborough', 'ON', 'M1T 9M0');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20237, 'Home', '54 Oakville Rd', 'Scarborough', 'ON', 'M6G 8H6');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20238, 'Office', '560 Queen St', 'Toronto', 'ON', 'M3F 5V6');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20239, 'Home', '122 Yonge St', 'Toronto', 'ON', 'M1P 7C0');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20240, 'Home', '125 Victoria Park Avenue', 'Toronto', 'ON', 'M1X 4C1');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20241, 'Home', '45 Merton St', 'Toronto', 'ON', 'M3P 1B4');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20242, 'Home', '123 Bay St', 'Toronto', 'ON', 'M3P 1B5');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20243, 'Home', '109 Neilson Avenue', 'Toronto', 'ON', 'M0K 3H5');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20244, 'Home', '298 Sheppard Ave', 'Scarborough', 'ON', 'M8U 2T4');
INSERT INTO Addresses (address_id,customer_id,address_name,street,city,province,postal_code) VALUES (address_id_seq.nextval,20245, 'Office', '131 Markham Rd', 'Scarborough', 'ON ', 'M9B 4A5');

--Product Category
INSERT INTO Product_Categories (category_id,category_type) VALUES (1,'Beverages');
INSERT INTO Product_Categories (category_id,category_type) VALUES (2,'Bread');
INSERT INTO Product_Categories (category_id,category_type) VALUES (3,'Canned/Jarred Goods');
INSERT INTO Product_Categories (category_id,category_type) VALUES (4,'Dairy');
INSERT INTO Product_Categories (category_id,category_type) VALUES (5,'Frozen Foods');
INSERT INTO Product_Categories (category_id,category_type) VALUES (6,'Meat');
INSERT INTO Product_Categories (category_id,category_type) VALUES (7,'Fruits');
INSERT INTO Product_Categories (category_id,category_type) VALUES (8,'Sweets');
INSERT INTO Product_Categories (category_id,category_type) VALUES (9,'Vegetables');
INSERT INTO Product_Categories (category_id,category_type) VALUES (10,'Personal Care');
INSERT INTO Product_Categories (category_id,category_type) VALUES (11,'Seafood');
INSERT INTO Product_Categories (category_id,category_type) VALUES (12,'Condiments and Spices');
INSERT INTO Product_Categories (category_id,category_type) VALUES (13,'Pasta, Rice and Cereal');
INSERT INTO Product_Categories (category_id,category_type) VALUES (14,'Snacks');
INSERT INTO Product_Categories (category_id,category_type) VALUES (15,'Others');

--Inventory
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Coca-cola', 'The worlds most popular soft drink, known for its iconic taste and refreshing bubbles.', 574, 4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Sprite','Lemon-lime flavored soft drink that is known for its refreshing taste.',104,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Fanta','Refreshing orange-flavored soft drink.',293,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Pepsi','Classic cola that is known for its bold and refreshing taste.',390,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Minute Maid Orange Juice','Made from 100% real orange juice.',960,3.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,1, 'Lipton Lemon Iced Tea','Made with real tea leaves and no artificial flavors.',405,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,2, 'Dempsters','100% whole grain bread is made from flour that is entirely made from the whole grain kernel.',175,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,2, 'Country Harvest','14-grain bread is a type of bread made from a variety of grains and seeds.',107,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,2, 'Wonder','White Bread  made from refined flour, resulting in a softer and lighter texture.',156,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,2, 'Natural Bakery','Canadian Rye bread is a traditional type of bread made from rye flour.',186,3.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'SPAM','Made with high-quality pork, ham, salt, and a blend of savory spices.',166,3.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'Spicy Chili Con Carne','Made with high-quality ground beef, kidney beans, and a blend of chili spices.',414,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'Maple Baked Beans','Classic Canadian baked beans slow-cooked with real maple syrup for a sweet and savory taste.',32,1.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'Wild Pacific Salmon','Packed with omega-3 fatty acids and protein, its perfect for salads, sandwiches, or eaten straight out of the can.',424,5.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'Pea Soup with Ham','Traditional pea soup made with green peas, carrots, and chunks of smoked ham for a hearty and flavorful soup.',247,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,3, 'Corned Beef','Classic corned beef hash is made with tender chunks of beef, diced potatoes, and a blend of spices.',87,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,4, 'Canadian Cheddar Cheese','Made from the milk of grass-fed cows and aged to perfection for a rich and nutty flavor.',198,6.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,4, 'Maple Syrup Butter','Blended with pure maple syrup for a sweet and delicious spread.',367,3.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,4, 'Yogurt','Smooth and creamy yogurt is made with fresh milk and live cultures.',162,3.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,4, 'Whipped Cream','Made with real cream and a touch of sugar for a light and airy topping.',245,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,4, 'Mango Ice Cream','Premium mango ice cream made with fresh milk and mango cream for a smooth and creamy texture.',29,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,5, 'Dr. Oetker Frozen Pizza',' Dr. Oetker is a popular brand of frozen pizza in Canada, known for its thin crust and gourmet toppings.',385,3.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,5, 'Poutine','Frozen poutine is made with crispy French fries, rich beef gravy, and melty cheese curds for a classic Canadian dish',70,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,5, 'Cavendish Farms Frozen French Fries','Frozen French fries are made from 100% real potatoes and are carefully cut and fried to perfection.',258,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,5, 'St. Hubert Chicken Pot Pie','Frozen chicken pot pie is a Canadian favorite, made with tender chicken, potatoes, peas, and carrots in a creamy sauce.',471,5.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Chicken Breasts','Chicken breasts are made from all-natural, grain-fed chickens that are raised without antibiotics.',118,15.9);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Pork Tenderlion',' Pork tenderloin is a lean and versatile cut of meat thats perfect for roasting, grilling, or pan-frying.',387,18.4);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Angus Beef Ribeye Steak','Made from Canadian AAA Angus beef, which is known for its marbling and flavor.',72,15.9);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Halal Chicken Wings','Made from halal-certified chicken and are perfect for game day or any other occasion.',10,17.9);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Canadian Lamb Shoulder','Tender and flavorful lamb shoulder is a Canadian specialty.',219,18.1);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,6, 'Turkey Breasts','Boneless and skinless turkey breast from Maple Leaf Farms is a lean and healthy source of protein.',448,19.1);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,7, 'Gala Apples','Fresh and crisp apples with a sweet flavor.',29,1.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,7, 'Valencia Oranges','Juicy and seedless oranges with a tart flavor.',157,0.79);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,7, 'Sweet Pineapple','Sweet and juicy pineapple with a golden flesh.',338,3.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,7, 'Red Grapes','Sweet and plump grapes with a firm texture.',166,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,7, 'Bananas','Fresh and ripe bananas with a soft texture.',85,0.59);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,8, 'Hersheys Chocolate Bars','Creamy milk chocolate bars with a rich flavor.',143,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,8, 'Skittles Candy','Chewy and fruity candy with a variety of flavors.',326,1.29);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,8, 'Twizzlers Licorice','Chewy and twisted licorice with a strawberry flavor.',305,1.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,8, 'Sour Patch Kids','Sour and sweet gummy candy in a variety of flavors.',486,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,8, 'Reeses Peanut Butter Cups','Creamy peanut butter cups with a milk chocolate coating.',339,0.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,9, 'Broccoli Crowns','Fresh and crisp broccoli crowns with a slightly sweet flavor.',97,1.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,9, 'Carrots','Juicy and sweet carrots with a crunchy texture.',32,0.89);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,9, 'Green Beans','Tender and flavorful green beans with a slight crunch.',132,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,9, 'Red Bell Peppers','Sweet and crunchy red bell peppers with a vibrant color.',135,1.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,9, 'Yellow Onions','Sweet and savory yellow onions with a firm texture.',165,0.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,10, 'Dove Body Wash','Creamy and moisturizing body wash with a soothing scent.',97,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,10, 'Colgate Toothpaste','Fresh and minty toothpaste that fights cavities and whitens teeth.',106,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,10, 'Pantene Shampoo','Nourishing and strengthening shampoo for all hair types.',270,5.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,10, 'Dove Deodorant','Long-lasting deodorant that keeps you feeling fresh all day.',164,3.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,10, 'Q-tips Cotton Swabs','Soft and gentle cotton swabs for a variety of uses.',282,2.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,11, 'Atlantic Salmon Fillets','Fresh and flavorful salmon fillets with a tender texture.',401,12.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,11, 'Raw Shrimp','Sweet and juicy raw shrimp with a mild flavor.',472,9.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,11, 'Ahi Tuna Steaks','Meaty and flavorful tuna steaks with a firm texture.',60,14.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,11, 'Pacific Cod Fillets','Mild and flaky cod fillets with a delicate flavor.',318,8.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,11, 'Wild-caught Scallops','Sweet and tender scallops with a buttery flavor.',259,19.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,12, 'McCormick Garlic Powder','Adds bold, savory flavor to any dish.',213,4.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,12, 'Heinz Ketchup','Classic tomato ketchup for all your favorite foods.',491,3.49);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,13, 'Barilla Spaghetti','Made from high-quality durum wheat semolina for the perfect al dente texture.',339,2.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,13, 'Quaker Oats','Heart-healthy and nutritious oats for a healthy breakfast.',362,4.79);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,14, 'Lays Potato Chips','Crispy and flavorful potato chips in a variety of flavors.',287,3.99);
INSERT INTO Inventory (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRODUCT_DESC,STOCK_QTY,PRICE) VALUES (product_id_seq.nextval,15, 'Duracell AA Batteries','Reliable and long-lasting power source for your electronics.',303,8.99);

--Order_Status
INSERT INTO ORDER_STATUS (STATUS_ID,STATUS) VALUES (501,'In-basket');
INSERT INTO ORDER_STATUS (STATUS_ID,STATUS) VALUES (502,'Ordered');
INSERT INTO ORDER_STATUS (STATUS_ID,STATUS) VALUES (503,'Cancelled');
INSERT INTO ORDER_STATUS (STATUS_ID,STATUS) VALUES (504,'Delivered');

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

INSERT INTO Orders (ORDER_ID, ORDER_DATE, SHIP_DATE, CUSTOMER_ID, ADDRESS_ID, STATUS_ID) VALUES (10001,'2023-01-03','2023-01-06','20231',111,502);
INSERT INTO Orders (ORDER_ID, ORDER_DATE, SHIP_DATE, CUSTOMER_ID, ADDRESS_ID, STATUS_ID) VALUES (10002,'2023-01-23','2023-01-25','20231',112,504);
INSERT INTO Orders (ORDER_ID, ORDER_DATE, SHIP_DATE, CUSTOMER_ID, ADDRESS_ID, STATUS_ID) VALUES (10003,'2023-02-23','2023-02-25','20232',113,504);

INSERT INTO ORDER_ITEMS (PRODUCT_ID,ORDER_ID,QUANTITY) VALUES (200,10001,1);
INSERT INTO ORDER_ITEMS (PRODUCT_ID,ORDER_ID,QUANTITY) VALUES (150,10002,1);
INSERT INTO ORDER_ITEMS (PRODUCT_ID,ORDER_ID,QUANTITY) VALUES (160,10003,1);

--Payment Status
INSERT INTO Payments(PAYMENT_ID,order_id,PAYMENT_STATUS,PAYMENT_MODE) VALUES(1,10001,'Paid','Debit/Credit');
INSERT INTO Payments(PAYMENT_ID,order_id,PAYMENT_STATUS,PAYMENT_MODE) VALUES(2,10002,'Not Paid','Cash');
INSERT INTO Payments(PAYMENT_ID,order_id,PAYMENT_STATUS,PAYMENT_MODE) VALUES(3,10003,'Paid','Cash');
--INSERT INTO Payments(PAYMENT_ID,PAYMENT_STATUS,PAYMENT_MODE) VALUES(4,'Paid','Paypal');
--INSERT INTO Payments(PAYMENT_ID,PAYMENT_STATUS,PAYMENT_MODE) VALUES(5,'Refunded','Debit/Credit');
--INSERT INTO Payments(PAYMENT_ID,PAYMENT_STATUS,PAYMENT_MODE) VALUES(6,'Failed','Paypal');

