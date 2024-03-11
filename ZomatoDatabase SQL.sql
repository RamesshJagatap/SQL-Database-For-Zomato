SELECT * FROM zomatoo.user;
 
                    create database zomatoo;
                    use zomatoo;
                    create table user (
                                      user_id varchar (255) primary key,
                                      Name varchar(20) not null,
                                      Email varchar(20) not null,
                                      Password varchar(10) not null,
                                      phone varchar(10) not  null
                                      );
                                      alter table user 
                                      modify column password varchar (20);
                                      
								
                   insert into user values 
											('1', 'Aarav Kumar', 'aarav@example.com', 'hashed_password_1', '9876543210'),
											('2', 'Aanya Sharma', 'aanya@example.com', 'hashed_password_2', '8765432109'),
											('3', 'Advait Patel', 'advait@example.com', 'hashed_password_3', '7654321098'),
											('4', 'Ananya Singh', 'ananya@example.com', 'hashed_password_4', '6543210987'),
											('5', 'Arjun Gupta', 'arjun@example.com', 'hashed_password_5', '5432109876'),
											('6', 'Avni Reddy', 'avni@example.com', 'hashed_password_6', '4321098765'),
											('7', 'Ayush Mehra', 'ayush@example.com', 'hashed_password_7', '3210987654'),
											('8', 'Bhavya Raj', 'bhavya@example.com', 'hashed_password_8', '2109876543'),
											('9', 'Dhruv Sharma', 'dhruv@example.com', 'hashed_password_9', '1098765432'),
											('10', 'Divya Kapoor', 'divya@example.com', 'hashed_password_10', '9876543210'),
											('11', 'Ishaan Verma', 'ishaan@example.com', 'hashed_password_11', '8765432109'),
											('12', 'Kritika Singh', 'kritika@example.com', 'hashed_password_12', '7654321098'),
											('13', 'Mihir Agarwal', 'mihir@example.com', 'hashed_password_13', '6543210987'),
											('14', 'Neha Desai', 'neha@example.com', 'hashed_password_14', '5432109876'),
											('15', 'Prisha Patel', 'prisha@example.com', 'hashed_password_15', '4321098765'),
											('16', 'Rahul Khanna', 'rahul@example.com', 'hashed_password_16', '3210987654'),
											('17', 'Riya Choudhary', 'riya@example.com', 'hashed_password_17', '2109876543'),
											('18', 'Shivansh Yadav', 'shivansh@example.com', 'hashed_password_18', '1098765432'),
											('19', 'Tanvi Singh', 'tanvi@example.com', 'hashed_password_19', '9876543210'),
											('20', 'Vivaan Kapoor', 'vivaan@example.com', 'hashed_password_20', '8765432109');
                                            select * from user;
                                           
			create table Restaurant (
                                      Restaurant_id int primary key,
                                      Name varchar(20) not null,
                                      address varchar (255) not null,
                                      Phone varchar(10) not null
                                      );
                                      
         insert into Restaurant values 
									(1, 'Saravana Bhavan', '12 Anna Salai, Chennai, Tamil Nadu', '9876543210'),
									(2, 'Biryani Paradise', '34 Dum Biryani Street, Hyderabad, Telangana', '8765432109'),
									(3, 'Tandoori Delights', '56 Naan Road, Delhi, Delhi', '7654321098'),
									(4, 'Dosa Junction', '78 Sambhar Lane, Bangalore, Karnataka', '6543210987'),
									(5, 'Chaat Corner', '90 Aloo Tikki Market, Mumbai, Maharashtra', '5432109876'),
									(6, 'Paneer Palace', '112 Cottage Cheese Complex, Kolkata, West Bengal', '4321098765'),
									(7, 'Mughlai Magic', '134 Shahi Kulfi Street, Lucknow, Uttar Pradesh', '3210987654'),
									(8, 'Chutney House', '156 Pickle Lane, Jaipur, Rajasthan', '2109876543'),
									(9, 'Kerala Kitchen', '178 Coconut Grove, Kochi, Kerala', '1098765432'),
									(10, 'Paratha Paradise', '200 Ghee Gali, Amritsar, Punjab', '9876543210'),
									(11, 'Vada Pav Villa', '222 Street Food Lane, Pune, Maharashtra', '8765432109'),
									(12, 'Rajma Retreat', '244 Dal Street, Chandigarh, Haryana', '7654321098'),
									(13, 'Mithai Mahal', '266 Gulab Jamun Road, Varanasi, Uttar Pradesh', '6543210987'),
									(14, 'Butter Chicken ', '288 Murgh Makhani Street, Ludhiana, Punjab', '5432109876'),
									(15, 'Idli Inn', '310 Fermented Rice Lane, Coimbatore, Tamil Nadu', '4321098765'),
									(16, 'Chapati Central', '332 Wheat Flour Street, Nagpur, Maharashtra', '3210987654'),
									(17, 'Rasam House', '354 Pepper Soup Lane, Ahmedabad, Gujarat', '2109876543'),
									(18, 'Masala Mansion', '376 Spice Street, Thiruvananthapuram, Kerala', '1098765432'),
									(19, 'Pakora Palace', '398 Onion Bhaji Lane, Indore, Madhya Pradesh', '9876543210'),
									(20, 'Papad Pavilion', '420 Papadam Road, Bhopal, Madhya Pradesh', '8765432109');
                                    
                                    select* from restaurant;

			create table orders (
								order_id int primary key,
                                user_id varchar(255) not null  ,                  -- foreign key
                                restaurant_id int  not null,
                                driver_id int  ,                          -- foreign key
                                order_total int not null,
                                foreign key (user_id) references user(user_id),
                                foreign key (restaurant_id) references restaurant (restaurant_id),
                                foreign key (driver_id) references drivers (driver_id)
                                 );
                                 
                                 select *from orders as o
                                 inner join user as a 
                                 on o.user_id= a.user_id;
                                 
                                select * from orders as o
                                right join user as a 
                                on o.user_id=a.user_id;
                                 
	   insert into orders values 
								(1, '1', 1, 1, 150),
								(2, '2', 2, 2, 200),
								(3, '3', 3, 3, 120),
								(4, '4', 4, 4, 180),
								(5, '5', 5, 5, 250),
								(6, '6', 6, 6, 130),
								(7, '7', 7, 7, 170),
								(8, '8', 8, 8, 190),
								(9, '9', 9, 9, 210),
								(10, '10', 10, 10, 160),
								(11, '11', 11, 11, 220),
								(12, '12', 12, 12, 140),
								(13, '13', 13, 13, 200),
								(14, '14', 14, 14, 180),
								(15, '15', 15, 15, 240),
								(16, '16', 16, 16, 170),
								(17, '17', 17, 17, 130),
								(18, '18', 18, 18, 150),
								(19, '19', 19, 19, 200),
								(20, '20', 20, 20, 160);

                                 
						     select *from orders;
                                 
                                 
          create table drivers (
                                Driver_id int primary key,
                                Name varchar(20) not null,
                                Phone varchar(10) not null,
                                vehicle_no varchar(10) not null,
							   location varchar(255) not null,
                               email varchar (20) not null
                               );
                               
		insert into drivers values
									(1, 'Rajesh Sharma', '7890123456', 'MH12345', 'Mumbai Central', 'rajesh@example.com'),
									(2, 'Anita Verma', '9876543210', 'KA56789', 'Bangalore Junction', 'anita@example.com'),
									(3, 'Pradeep Singh', '8765432109', 'DL67890', 'Connaught Place, Delhi', 'pradeep@example.com'),
									(4, 'Suman Patel', '7654321098', 'GJ45678', 'Ahmedabad Station', 'suman@example.com'),
									(5, 'Vikram Reddy', '6543210987', 'TS98765', 'Charminar, Hyderabad', 'vikram@example.com'),
									(6, 'Neha Gupta', '5432109876', 'UP23456', 'Hazratganj, Lucknow', 'neha@example.com'),
									(7, 'Arjun Kumar', '4321098765', 'MP78901', 'Bhopal Junction', 'arjun@example.com'),
									(8, 'Pooja Sharma', '3210987654', 'TN12345', 'Marina Beach, Chennai', 'pooja@example.com'),
									(9, 'Harish Yadav', '2109876543', 'RJ56789', 'Hawa Mahal, Jaipur', 'harish@example.com'),
									(10, 'Meera Reddy', '1098765432', 'KL67890', 'Fort Kochi, Kerala', 'meera@example.com'),
									(11, 'Vishal Kapoor', '9876543210', 'MH23456', 'Pune Station', 'vishal@example.com'),
									(12, 'Anjali Singh', '8765432109', 'KA56789', 'Lalbagh, Bangalore', 'anjali@example.com'),
									(13, 'Rajat Agarwal', '7654321098', 'DL67890', 'Nehru Place, Delhi', 'rajat@example.com'),
									(14, 'Preeti Desai', '6543210987', 'GJ45678', 'Sabarmati Ashram, Ahmedabad', 'preeti@example.com'),
									(15, 'Santosh Kumar', '5432109876', 'TS98765', 'Tank Bund, Hyderabad', 'santosh@example.com'),
									(16, 'Deepika Patel', '4321098765', 'UP23456', 'Gomti Nagar, Lucknow', 'deepika@example.com'),
									(17, 'Karan Singh', '3210987654', 'MP78901', 'Van Vihar, Bhopal', 'karan@example.com'),
									(18, 'Ritu Verma', '2109876543', 'TN12345', 'Marina Beach, Chennai', 'ritu@example.com'),
									(19, 'Amit Yadav', '1098765432', 'RJ56789', 'City Palace, Jaipur', 'amit@example.com'),
									(20, 'Simran Kapoor', '9876543210', 'KL67890', 'Kochi Beach, Kerala', 'simran@example.com');

                               select* from drivers;
                               
                               
            create table Payment (
                                Payment_id int primary key,
                                order_id int not null,               --  foreign key
                                payment_method varchar (30),
                                amount varchar (10) ,
                                status varchar(10),
                                foreign key (order_id) references orders(order_id)
                                );
                                
			insert into payment values
										(1, 1, 'Credit Card', '150', 'Completed'),
										(2, 2, 'Debit Card', '200', 'Completed'),
										(3, 3, 'Cash on Delivery', '120', 'Pending'),
										(4, 4, 'UPI', '180', 'Completed'),
										(5, 5, 'Net Banking', '250', 'Completed'),
										(6, 6, 'Credit Card', '130', 'Completed'),
										(7, 7, 'Debit Card', '170', 'Completed'),
										(8, 8, 'Cash on Delivery', '190', 'Pending'),
										(9, 9, 'UPI', '210', 'Completed'),
										(10, 10, 'Net Banking', '160', 'Completed'),
										(11, 11, 'Credit Card', '220', 'Completed'),
										(12, 12, 'Debit Card', '140', 'Completed'),
										(13, 13, 'Cash on Delivery', '200', 'Pending'),
										(14, 14, 'UPI', '180', 'Completed'),
										(15, 15, 'Net Banking', '240', 'Completed'),
										(16, 16, 'Credit Card', '170', 'Completed'),
										(17, 17, 'Debit Card', '130', 'Completed'),
										(18, 18, 'Cash on Delivery', '150', 'Pending'),
										(19, 19, 'UPI', '200', 'Completed'),
										(20, 20, 'Net Banking', '160', 'Completed');
                                        
                                        select *from payment;

                                
			create table rating (
                               Rating_id int primary key,
                               user_id varchar(255) not null,                   -- foreign key
                               restaurant_id int(20) not null,
                               rating varchar(5) not null,
                               foreign key (user_id) references user ( user_id),
                               foreign key (restaurant_id) references restaurant (restaurant_id)
                               );
                               
                              
                               
			insert into rating values 
											(1, '1', 1, '4.5'),
											(2, '2', 2, '3.8'),
											(3, '3', 3, '4.2'),
											(4, '4', 4, '4.0'),
											(5, '5', 5, '4.7'),
											(6, '6', 6, '3.5'),
											(7, '7', 7, '4.2'),
											(8, '8', 8, '4.8'),
											(9, '9', 9, '3.9'),
											(10, '10', 10, '4.5'),
											(11, '11', 11, '4.1'),
											(12, '12', 12, '3.7'),
											(13, '13', 13, '4.4'),
											(14, '14', 14, '4.0'),
											(15, '15', 15, '4.9'),
											(16, '16', 16, '4.2'),
											(17, '17', 17, '3.6'),
											(18, '18', 18, '4.0'),
											(19, '19', 19, '4.3'),
											(20, '20', 20, '4.5');
                                            
                                            select * from rating;
										

                               
                               
		
            
                               
			create table address (
                                 address_id int primary key,
                                 user_id varchar(255) not  null,           -- foreign key
                                 state varchar (20) not null,
                                 city varchar (20) not null,
                                 street varchar(20) not null,
                                 pincode int not null,
                                 foreign key (user_id) references user (user_id)
                                 );
                                 desc address;
                                 drop table address;
                                 
                                 
			insert into address values 
									(1, 1, 'Maharashtra', 'Mumbai', 'Colaba Causeway', 400001),
									(2, 2, 'Karnataka', 'Bangalore', 'MG Road', 560001),
									(3, 3, 'Delhi', 'New Delhi', 'Connaught Place', 110001),
									(4, 4, 'Gujarat', 'Ahmedabad', 'C.G. Road', 380009),
									(5, 5, 'Telangana', 'Hyderabad', 'Banjara Hills', 500034),
									(6, 6, 'Uttar Pradesh', 'Lucknow', 'Hazratganj', 226001),
									(7, 7, 'Madhya Pradesh', 'Bhopal', 'MP Nagar', 462011),
									(8, 8, 'Tamil Nadu', 'Chennai', 'Mount Road', 600002),
									(9, 9, 'Rajasthan', 'Jaipur', 'MI Road', 302001),
									(10, 10, 'Kerala', 'Kochi', 'MG Road', 682011),
									(11, 11, 'Maharashtra', 'Pune', 'FC Road', 411005),
									(12, 12, 'Karnataka', 'Bangalore', 'Indiranagar', 560038),
									(13, 13, 'Delhi', 'New Delhi', 'Saket', 110017),
									(14, 14, 'Gujarat', 'Ahmedabad', 'Manek Chowk', 380001),
									(15, 15, 'Telangana', 'Hyderabad', 'Jubilee Hills', 500033),
									(16, 16, 'Uttar Pradesh', 'Lucknow', 'Gomti Nagar', 226010),
									(17, 17, 'Madhya Pradesh', 'Indore', 'Vijay Nagar', 452010),
									(18, 18, 'Tamil Nadu', 'Chennai', 'Adyar', 600020),
									(19, 19, 'Rajasthan', 'Jaipur', 'Malviya Nagar', 302017),
									(20, 20, 'Kerala', 'Trivandrum', 'MG Road', 695001);
                                    
                                    select * from address;
                                    

                                 
			create table Menu (
                              menu_id int primary key ,
                              restaurant_id int not null ,  -- foreign key
                              item_name varchar(20) not null,
                              price varchar (10),
                              foreign key (restaurant_id)references Restaurant (restaurant_id)
                              );
                              
                              select menu_id, restaurant_id,price as rate,item_name
                              from menu
                              where price<30;

        insert into menu values
								(1, 1, 'Paneer Tikka', 150),
								(2, 1, 'Chicken Biryani', 200),
								(3, 2, 'Dosa', 50),
								(4, 2, 'Bhindi Masala', 120),
								(5, 3, 'Butter Chicken', 180),
								(6, 3, 'Veg Biryani', 160),
								(7, 4, 'Chole Bhature', 80),
								(8, 4, 'Pulao', 100),
								(9, 5, 'Tandoori Roti', 15),
								(10, 5, 'Aloo Gobi', 110),
								(11, 6, 'Samosa', 30),
								(12, 6, 'Chicken Curry', 190),
								(13, 7, 'Rajma Chawal', 120),
								(14, 7, 'Dal Tadka', 90),
								(15, 8, 'Idli Sambhar', 60),
								(16, 8, 'Gulab Jamun', 40),
								(17, 9, 'Masala Dosa', 70),
								(18, 9, 'Pav Bhaji', 80),
								(19, 10, 'Kadai Paneer', 150),
								(20, 10, 'Jeera Rice', 50);
                                select * from menu;

                              desc user;
                              desc restaurant;
                              desc orders;
                              desc drivers;
                              desc payment;
                              desc rating ;
                              desc address;
                              desc menu;
                              
                              