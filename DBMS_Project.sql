create database hotel;
use hotel;

/*Guests Table*/

CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255)
);

/*Rooms Table*/

CREATE TABLE Rooms (
    room_number INT PRIMARY KEY,
    room_type VARCHAR(50),
    rate DECIMAL(10, 2),
    capacity INT,
    description TEXT
);

/*Reservations Table*/
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    guest_id INT,
    room_number INT,
    check_in_date DATE,
    check_out_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);
/*Room Types Table*/
CREATE TABLE RoomTypes (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(50),
    description TEXT
);
/*Room Facilities Table*/
CREATE TABLE RoomFacilities (
    facility_id INT PRIMARY KEY,
    facility_name VARCHAR(50),
    description TEXT
);

/*Room Facilities Link Table*/
CREATE TABLE RoomFacilitiesLink (
    room_number INT,
    facility_id INT,
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number),
    FOREIGN KEY (facility_id) REFERENCES RoomFacilities(facility_id),
    PRIMARY KEY (room_number, facility_id)
);

/*Room Bookings Table*/
CREATE TABLE RoomBookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_number INT,
    booking_date DATE,
    booking_status VARCHAR(20),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);

/*RoomMaintenance Table*/
CREATE TABLE RoomMaintenance (
    maintenance_id INT PRIMARY KEY,
    room_number INT,
    maintenance_date DATE,
    description TEXT,
    status VARCHAR(20),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);

/*Room Prices Table*/
CREATE TABLE RoomPrices (
    price_id INT PRIMARY KEY,
    room_number INT,
    start_date DATE,
    end_date DATE,
    price DECIMAL(10, 2),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);


/*Room Service Orders Table*/
CREATE TABLE RoomServiceOrders (
    order_id INT PRIMARY KEY,
    guest_id INT,
    room_number INT,
    order_date DATETIME,
    service_description TEXT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);


/*Guests Table*/
INSERT INTO Guests (guest_id, first_name, last_name, email, phone, address) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, City, Country'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Elm St, City, Country'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '1231231234', '789 Oak St, City, Country'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '9876543210', '987 Pine St, City, Country'),
(5, 'David', 'Wilson', 'david.wilson@example.com', '4567890123', '654 Maple St, City, Country'),
(6, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '3210987654', '321 Cedar St, City, Country'),
(7, 'Matthew', 'Anderson', 'matthew.anderson@example.com', '7890123456', '456 Birch St, City, Country'),
(8, 'Jessica', 'Martinez', 'jessica.martinez@example.com', '2109876543', '789 Oak St, City, Country'),
(9, 'Christopher', 'Hernandez', 'christopher.hernandez@example.com', '5432109876', '123 Elm St, City, Country'),
(10, 'Ashley', 'Garcia', 'ashley.garcia@example.com', '6789012345', '987 Maple St, City, Country'),
(11, 'Daniel', 'Lopez', 'daniel.lopez@example.com', '2345678901', '456 Pine St, City, Country'),
(12, 'Brittany', 'Gonzalez', 'brittany.gonzalez@example.com', '8901234567', '123 Cedar St, City, Country'),
(13, 'Andrew', 'Wilson', 'andrew.wilson@example.com', '1234509876', '789 Birch St, City, Country'),
(14, 'Elizabeth', 'Perez', 'elizabeth.perez@example.com', '6789012345', '456 Oak St, City, Country'),
(15, 'Joshua', 'Robinson', 'joshua.robinson@example.com', '9876543210', '321 Elm St, City, Country'),
(16, 'Amanda', 'Taylor', 'amanda.taylor@example.com', '2345678901', '987 Maple St, City, Country'),
(17, 'Ryan', 'Hernandez', 'ryan.hernandez@example.com', '8901234567', '654 Cedar St, City, Country'),
(18, 'Megan', 'King', 'megan.king@example.com', '2109876543', '321 Birch St, City, Country'),
(19, 'Justin', 'Young', 'justin.young@example.com', '1234509876', '789 Oak St, City, Country'),
(20, 'Nicole', 'Lee', 'nicole.lee@example.com', '4567890123', '123 Pine St, City, Country'),
(21, 'Brandon', 'Gonzalez', 'brandon.gonzalez@example.com', '8901234567', '456 Cedar St, City, Country'),
(22, 'Stephanie', 'White', 'stephanie.white@example.com', '2345678901', '789 Maple St, City, Country'),
(23, 'Eric', 'Scott', 'eric.scott@example.com', '1234509876', '654 Birch St, City, Country'),
(24, 'Samantha', 'Hall', 'samantha.hall@example.com', '2109876543', '321 Oak St, City, Country'),
(25, 'Tyler', 'Allen', 'tyler.allen@example.com', '1234567890', '987 Elm St, City, Country'),
(26, 'Taylor', 'Young', 'taylor.young@example.com', '4567890123', '456 Maple St, City, Country'),
(27, 'Rachel', 'Lewis', 'rachel.lewis@example.com', '0987654321', '123 Cedar St, City, Country'),
(28, 'Alexander', 'Clark', 'alexander.clark@example.com', '6789012345', '789 Pine St, City, Country'),
(29, 'Lauren', 'Walker', 'lauren.walker@example.com', '1231231234', '654 Birch St, City, Country'),
(30, 'Cody', 'Roberts', 'cody.roberts@example.com', '2109876543', '321 Elm St, City, Country'),
(31, 'Kayla', 'Lewis', 'kayla.lewis@example.com', '5432109876', '987 Cedar St, City, Country'),
(32, 'Heather', 'Green', 'heather.green@example.com', '6789012345', '456 Maple St, City, Country'),
(33, 'Kyle', 'Hall', 'kyle.hall@example.com', '1234509876', '123 Pine St, City, Country'),
(34, 'Amber', 'Young', 'amber.young@example.com', '7890123456', '789 Cedar St, City, Country'),
(35, 'Jacob', 'Lee', 'jacob.lee@example.com', '2109876543', '456 Elm St, City, Country'),
(36, 'Olivia', 'King', 'olivia.king@example.com', '1234567890', '321 Birch St, City, Country'),
(37, 'Megan', 'Allen', 'megan.allen@example.com', '0987654321', '987 Oak St, City, Country'),
(38, 'Kevin', 'Evans', 'kevin.evans@example.com', '6789012345', '654 Pine St, City, Country'),
(39, 'Hannah', 'Gonzalez', 'hannah.gonzalez@example.com', '1231231234', '321 Cedar St, City, Country'),
(40, 'Zachary', 'Hernandez', 'zachary.hernandez@example.com', '5432109876', '987 Birch St, City, Country'),
(41, 'Emma', 'Scott', 'emma.scott@example.com', '6789012345', '456 Oak St, City, Country'),
(42, 'Nicholas', 'Martinez', 'nicholas.martinez@example.com', '2109876543', '123 Elm St, City, Country'),
(43, 'Rebecca', 'Garcia', 'rebecca.garcia@example.com', '1234509876', '789 Maple St, City, Country'),
(44, 'Alyssa', 'Rodriguez', 'alyssa.rodriguez@example.com', '5432109876', '456 Cedar St, City, Country'),
(45, 'Austin', 'Miller', 'austin.miller@example.com', '0987654321', '987 Pine St, City, Country'),
(46, 'Grace', 'Cook', 'grace.cook@example.com', '6789012345', '654 Cedar St, City, Country'),
(47, 'Jordan', 'Walker', 'jordan.walker@example.com', '1231231234', '321 Birch St, City, Country'),
(48, 'Caitlin', 'Hill', 'caitlin.hill@example.com', '2109876543', '987 Elm St, City, Country'),
(49, 'Jesse', 'Turner', 'jesse.turner@example.com', '1234567890', '456 Maple St, City, Country'),
(50, 'Kaitlyn', 'Baker', 'kaitlyn.baker@example.com', '0987654321', '123 Oak St, City, Country');


/*Rooms Table*/
INSERT INTO Rooms (room_number, room_type, rate, capacity, description) VALUES
(101, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(102, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(103, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(104, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(105, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(106, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(107, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(108, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(109, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(110, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(111, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(112, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(113, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(114, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(115, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(116, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(117, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(118, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(119, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(120, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(121, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(122, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(123, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(124, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(125, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(126, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(127, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(128, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(129, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(130, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(131, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(132, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(133, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(134, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(135, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(136, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(137, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(138, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(139, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(140, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(141, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(142, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(143, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(144, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(145, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(146, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(147, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(148, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(149, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed'),
(150, 'Standard', 100.00, 2, 'Standard room with one queen-sized bed');

/*Reservations Table*/

INSERT INTO Reservations (reservation_id, guest_id, room_number, check_in_date, check_out_date, total_price) VALUES
(1, 1, 101, '2024-04-20', '2024-04-25', 500.00),
(2, 2, 102, '2024-04-21', '2024-04-23', 200.00),
(3, 3, 103, '2024-04-22', '2024-04-24', 200.00),
(4, 4, 104, '2024-04-23', '2024-04-25', 200.00),
(5, 5, 105, '2024-04-24', '2024-04-26', 200.00),
(6, 6, 106, '2024-04-25', '2024-04-27', 200.00),
(7, 7, 107, '2024-04-26', '2024-04-28', 200.00),
(8, 8, 108, '2024-04-27', '2024-04-29', 200.00),
(9, 9, 109, '2024-04-28', '2024-04-30', 200.00),
(10, 10, 110, '2024-04-29', '2024-05-01', 200.00),
(11, 11, 111, '2024-04-30', '2024-05-02', 200.00),
(12, 12, 112, '2024-05-01', '2024-05-03', 200.00),
(13, 13, 113, '2024-05-02', '2024-05-04', 200.00),
(14, 14, 114, '2024-05-03', '2024-05-05', 200.00),
(15, 15, 115, '2024-05-04', '2024-05-06', 200.00),
(16, 16, 116, '2024-05-05', '2024-05-07', 200.00),
(17, 17, 117, '2024-05-06', '2024-05-08', 200.00),
(18, 18, 118, '2024-05-07', '2024-05-09', 200.00),
(19, 19, 119, '2024-05-08', '2024-05-10', 200.00),
(20, 20, 120, '2024-05-09', '2024-05-11', 200.00),
(21, 21, 121, '2024-05-10', '2024-05-12', 200.00),
(22, 22, 122, '2024-05-11', '2024-05-13', 200.00),
(23, 23, 123, '2024-05-12', '2024-05-14', 200.00),
(24, 24, 124, '2024-05-13', '2024-05-15', 200.00),
(25, 25, 125, '2024-05-14', '2024-05-16', 200.00),
(26, 26, 126, '2024-05-15', '2024-05-17', 200.00),
(27, 27, 127, '2024-05-16', '2024-05-18', 200.00),
(28, 28, 128, '2024-05-17', '2024-05-19', 200.00),
(29, 29, 129, '2024-05-18', '2024-05-20', 200.00),
(30, 30, 130, '2024-05-19', '2024-05-21', 200.00),
(31, 31, 131, '2024-05-20', '2024-05-22', 200.00),
(32, 32, 132, '2024-05-21', '2024-05-23', 200.00),
(33, 33, 133, '2024-05-22', '2024-05-24', 200.00),
(34, 34, 134, '2024-05-23', '2024-05-25', 200.00),
(35, 35, 135, '2024-05-24', '2024-05-26', 200.00),
(36, 36, 136, '2024-05-25', '2024-05-27', 200.00),
(37, 37, 137, '2024-05-26', '2024-05-28', 200.00),
(38, 38, 138, '2024-05-27', '2024-05-29', 200.00),
(39, 39, 139, '2024-05-28', '2024-05-30', 200.00),
(40, 40, 140, '2024-05-29', '2024-05-31', 200.00),
(41, 41, 141, '2024-05-30', '2024-06-01', 200.00),
(42, 42, 142, '2024-05-31', '2024-06-02', 200.00),
(43, 43, 143, '2024-06-01', '2024-06-03', 200.00),
(44, 44, 144, '2024-06-02', '2024-06-04', 200.00),
(45, 45, 145, '2024-06-03', '2024-06-05', 200.00),
(46, 46, 146, '2024-06-04', '2024-06-06', 200.00),
(47, 47, 147, '2024-06-05', '2024-06-07', 200.00),
(48, 48, 148, '2024-06-06', '2024-06-08', 200.00),
(49, 49, 149, '2024-06-07', '2024-06-09', 200.00),
(50, 50, 150, '2024-06-08', '2024-06-10', 200.00);

/*Room Types Table*/
INSERT INTO RoomTypes (type_id, type_name, description) VALUES
(1, 'Standard', 'Standard room with one queen-sized bed'),
(2, 'Double', 'Room with two double beds'),
(3, 'Suite', 'Luxurious suite with separate living and sleeping areas'),
(4, 'Deluxe', 'Spacious room with king-sized bed and additional amenities'),
(5, 'Family', 'Family room with multiple beds and space for children'),
(6, 'Executive', 'Executive room with additional amenities and services'),
(7, 'Superior', 'Superior room with high-quality furnishings and amenities'),
(8, 'Ocean View', 'Room with a view of the ocean'),
(9, 'Pool View', 'Room with a view of the pool'),
(10, 'Penthouse', 'Luxurious penthouse suite with stunning views'),
(11, 'Accessible', 'Accessible room designed for guests with disabilities'),
(12, 'Pet Friendly', 'Room suitable for guests traveling with pets'),
(13, 'Honeymoon Suite', 'Romantic suite designed for honeymooners'),
(14, 'Business Suite', 'Suite with a dedicated workspace for business travelers'),
(15, 'VIP Suite', 'Exclusive suite with VIP amenities and services'),
(16, 'Presidential Suite', 'The most luxurious suite in the hotel'),
(17, 'Studio', 'Studio-style room with kitchenette and living area'),
(18, 'Loft', 'Room with a lofted sleeping area'),
(19, 'Economy', 'Basic room with essential amenities at an affordable rate'),
(20, 'Extended Stay', 'Room designed for long-term stays with kitchenette and laundry facilities'),
(21, 'Interconnecting', 'Rooms with connecting doors, ideal for families or groups'),
(22, 'Adjoining', 'Rooms located next to each other, suitable for families or groups'),
(23, 'Junior Suite', 'Spacious suite with separate living and sleeping areas'),
(24, 'Executive Suite', 'Suite designed for business travelers with additional amenities'),
(25, 'Club Level', 'Room located on a designated club level with exclusive access to amenities'),
(26, 'Garden View', 'Room with a view of the hotel garden'),
(27, 'City View', 'Room with a view of the city skyline'),
(28, 'Mountain View', 'Room with a view of the surrounding mountains'),
(29, 'River View', 'Room with a view of the nearby river'),
(30, 'Lake View', 'Room with a view of the nearby lake'),
(31, 'Forest View', 'Room with a view of the adjacent forest'),
(32, 'Park View', 'Room with a view of the nearby park'),
(33, 'Courtyard View', 'Room with a view of the hotel courtyard'),
(34, 'Terrace', 'Room with a private terrace'),
(35, 'Balcony', 'Room with a private balcony'),
(36, 'Jacuzzi Suite', 'Suite with a private Jacuzzi'),
(37, 'Fireplace Suite', 'Suite with a private fireplace'),
(38, 'Whirlpool Suite', 'Suite with a private whirlpool tub'),
(39, 'Rooftop Suite', 'Suite located on the hotel rooftop with panoramic views'),
(40, 'Family Suite', 'Suite designed for families with separate bedrooms and living areas'),
(41, 'Luxury Villa', 'Private villa with luxurious amenities and services'),
(42, 'Beachfront Villa', 'Villa located directly on the beach with private access'),
(43, 'Mountain Chalet', 'Chalet nestled in the mountains with cozy accommodations'),
(44, 'Riverside Cabin', 'Cabin located by the river with rustic charm'),
(45, 'Lake House', 'House overlooking the lake with modern amenities'),
(46, 'Treehouse', 'Room built in a tree for a unique and adventurous experience'),
(47, 'Underwater Room', 'Room located underwater for a one-of-a-kind stay'),
(48, 'Igloo', 'Room made of ice and snow for an Arctic experience'),
(49, 'Yurt', 'Traditional nomadic tent for a cultural experience'),
(50, 'Capsule Room', 'Compact room with basic amenities for budget travelers');


/*Room Facilities Table*/
INSERT INTO RoomFacilities (facility_id, facility_name, description) VALUES
(1, 'Wi-Fi', 'High-speed internet access throughout the property'),
(2, 'Parking', 'Secure parking available on-site'),
(3, 'Restaurant', 'On-site restaurant serving breakfast, lunch, and dinner'),
(4, 'Bar/Lounge', 'Bar/lounge area for drinks and relaxation'),
(5, 'Swimming Pool', 'Outdoor swimming pool with sun loungers'),
(6, 'Fitness Center', 'Fully-equipped fitness center with modern equipment'),
(7, 'Spa', 'Luxurious spa offering massage and beauty treatments'),
(8, 'Room Service', '24-hour room service for guest convenience'),
(9, 'Concierge Service', 'Concierge assistance for travel arrangements and recommendations'),
(10, 'Business Center', 'Business center with meeting rooms and conference facilities'),
(11, 'Conference Room', 'Dedicated conference room for meetings and events'),
(12, 'Banquet Hall', 'Spacious banquet hall for weddings and special occasions'),
(13, 'Airport Shuttle', 'Airport shuttle service for guest transportation'),
(14, 'Car Rental Service', 'Car rental service available at the hotel'),
(15, 'Valet Parking', 'Valet parking service for guests'),
(16, 'Tour Desk', 'Tour desk offering information on local attractions and excursions'),
(17, 'Ticket Service', 'Ticket service for events and shows'),
(18, 'Luggage Storage', 'Secure luggage storage facilities'),
(19, 'Currency Exchange', 'Currency exchange service for international guests'),
(20, 'ATM/Cash Machine', 'ATM/cash machine on-site for guest convenience'),
(21, 'Laundry Service', 'Laundry and dry cleaning service available'),
(22, 'Shuttle Service', 'Shuttle service to nearby attractions and points of interest'),
(23, 'Pet Friendly', 'Pet-friendly accommodations for guests traveling with pets'),
(24, 'Non-Smoking Rooms', 'Non-smoking rooms available for guest comfort'),
(25, 'Smoking Area', 'Designated smoking area for smoking guests'),
(26, 'Elevator', 'Elevator for easy access to all floors'),
(27, 'Garden', 'Beautifully landscaped garden for guest enjoyment'),
(28, 'Terrace', 'Outdoor terrace with seating and panoramic views'),
(29, 'BBQ Facilities', 'Barbecue facilities available for guest use'),
(30, 'Children''s Playground', 'Playground area for children'),
(31, 'Game Room', 'Game room with entertainment options for guests'),
(32, 'Library', 'Quiet library area for reading and relaxation'),
(33, 'Bicycle Rental', 'Bicycle rental service for exploring the area'),
(34, 'Hiking Trails', 'Hiking trails starting from the hotel property'),
(35, 'Ski Storage', 'Ski storage facilities for winter sports enthusiasts'),
(36, 'Tennis Court', 'Tennis court available for guest use'),
(37, 'Golf Course', 'Golf course adjacent to the hotel property'),
(38, 'Water Sports', 'Water sports equipment rental and activities'),
(39, 'Beach Access', 'Direct access to the beach from the hotel'),
(40, 'Water Park', 'On-site water park for family fun'),
(41, 'Indoor Entertainment', 'Indoor entertainment options for all ages'),
(42, 'Outdoor Entertainment', 'Outdoor entertainment areas for gatherings and events'),
(43, 'Cinema', 'Private cinema for movie screenings'),
(44, 'Art Gallery', 'On-site art gallery showcasing local artists'),
(45, 'Live Music', 'Live music performances for guest enjoyment'),
(46, 'Dance Floor', 'Dance floor for events and celebrations'),
(47, 'Wedding Services', 'Wedding planning and coordination services'),
(48, 'Children''s Activities', 'Organized activities and programs for children'),
(49, 'Yoga Classes', 'Yoga classes offered on-site for guests'),
(50, 'Cooking Classes', 'Cooking classes available for guests to learn local cuisine');


/*Room Facilities Link Table*/
INSERT INTO RoomFacilitiesLink (room_number, facility_id) VALUES
(101, 1),
(101, 2),
(101, 3),
(101, 4),
(101, 5),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(102, 6),
(103, 1),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(104, 7),
(105, 1),
(105, 2),
(105, 3),
(105, 4),
(105, 8),
(106, 1),
(106, 2),
(106, 3),
(106, 4),
(106, 9),
(107, 1),
(107, 2),
(107, 3),
(107, 4),
(107, 10),
(108, 1),
(108, 2),
(108, 3),
(108, 4),
(108, 11),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(109, 12),
(110, 1),
(110, 2),
(110, 3),
(110, 4),
(110, 13);

/*Room Bookings Table*/
INSERT INTO RoomBookings (booking_id, guest_id, room_number, booking_date, booking_status) VALUES
(1, 1, 101, '2024-04-10', 'Confirmed'),
(2, 2, 102, '2024-04-11', 'Confirmed'),
(3, 3, 103, '2024-04-12', 'Confirmed'),
(4, 4, 104, '2024-04-13', 'Confirmed'),
(5, 5, 105, '2024-04-14', 'Confirmed'),
(6, 6, 106, '2024-04-15', 'Confirmed'),
(7, 7, 107, '2024-04-16', 'Confirmed'),
(8, 8, 108, '2024-04-17', 'Confirmed'),
(9, 9, 109, '2024-04-18', 'Confirmed'),
(10, 10, 110, '2024-04-19', 'Confirmed'),
(11, 11, 111, '2024-04-20', 'Confirmed'),
(12, 12, 112, '2024-04-21', 'Confirmed'),
(13, 13, 113, '2024-04-22', 'Confirmed'),
(14, 14, 114, '2024-04-23', 'Confirmed'),
(15, 15, 115, '2024-04-24', 'Confirmed'),
(16, 16, 116, '2024-04-25', 'Confirmed'),
(17, 17, 117, '2024-04-26', 'Confirmed'),
(18, 18, 118, '2024-04-27', 'Confirmed'),
(19, 19, 119, '2024-04-28', 'Confirmed'),
(20, 20, 120, '2024-04-29', 'Confirmed'),
(21, 21, 121, '2024-04-30', 'Confirmed'),
(22, 22, 122, '2024-05-01', 'Confirmed'),
(23, 23, 123, '2024-05-02', 'Confirmed'),
(24, 24, 124, '2024-05-03', 'Confirmed'),
(25, 25, 125, '2024-05-04', 'Confirmed'),
(26, 26, 126, '2024-05-05', 'Confirmed'),
(27, 27, 127, '2024-05-06', 'Confirmed'),
(28, 28, 128, '2024-05-07', 'Confirmed'),
(29, 29, 129, '2024-05-08', 'Confirmed'),
(30, 30, 130, '2024-05-09', 'Confirmed'),
(31, 31, 131, '2024-05-10', 'Confirmed'),
(32, 32, 132, '2024-05-11', 'Confirmed'),
(33, 33, 133, '2024-05-12', 'Confirmed'),
(34, 34, 134, '2024-05-13', 'Confirmed'),
(35, 35, 135, '2024-05-14', 'Confirmed'),
(36, 36, 136, '2024-05-15', 'Confirmed'),
(37, 37, 137, '2024-05-16', 'Confirmed'),
(38, 38, 138, '2024-05-17', 'Confirmed'),
(39, 39, 139, '2024-05-18', 'Confirmed'),
(40, 40, 140, '2024-05-19', 'Confirmed'),
(41, 41, 141, '2024-05-20', 'Confirmed'),
(42, 42, 142, '2024-05-21', 'Confirmed'),
(43, 43, 143, '2024-05-22', 'Confirmed'),
(44, 44, 144, '2024-05-23', 'Confirmed'),
(45, 45, 145, '2024-05-24', 'Confirmed'),
(46, 46, 146, '2024-05-25', 'Confirmed'),
(47, 47, 147, '2024-05-26', 'Confirmed'),
(48, 48, 148, '2024-05-27', 'Confirmed'),
(49, 49, 149, '2024-05-28', 'Confirmed'),
(50, 50, 150, '2024-05-29', 'Confirmed');

/*RoomMaintenance Table*/
INSERT INTO RoomMaintenance (maintenance_id, room_number, maintenance_date, description, status) VALUES
(1, 101, '2024-04-10', 'Replacing light bulbs', 'Completed'),
(2, 102, '2024-04-11', 'Fixing leaking faucet', 'Completed'),
(3, 103, '2024-04-12', 'Painting walls', 'Completed'),
(4, 104, '2024-04-13', 'Replacing carpet', 'Completed'),
(5, 105, '2024-04-14', 'Repairing air conditioner', 'Completed'),
(6, 106, '2024-04-15', 'Unclogging drain', 'Completed'),
(7, 107, '2024-04-16', 'Fixing broken window', 'Completed'),
(8, 108, '2024-04-17', 'Repairing TV', 'Completed'),
(9, 109, '2024-04-18', 'Replacing door lock', 'Completed'),
(10, 110, '2024-04-19', 'Fixing toilet flush', 'Completed'),
(11, 111, '2024-04-20', 'Repairing shower', 'Completed'),
(12, 112, '2024-04-21', 'Replacing mattress', 'Completed'),
(13, 113, '2024-04-22', 'Fixing broken chair', 'Completed'),
(14, 114, '2024-04-23', 'Unclogging sink', 'Completed'),
(15, 115, '2024-04-24', 'Painting ceiling', 'Completed'),
(16, 116, '2024-04-25', 'Replacing curtains', 'Completed'),
(17, 117, '2024-04-26', 'Fixing electrical wiring', 'Completed'),
(18, 118, '2024-04-27', 'Repairing heating system', 'Completed'),
(19, 119, '2024-04-28', 'Fixing broken mirror', 'Completed'),
(20, 120, '2024-04-29', 'Replacing furniture', 'Completed'),
(21, 121, '2024-04-30', 'Unclogging toilet', 'Completed'),
(22, 122, '2024-05-01', 'Fixing shower head', 'Completed'),
(23, 123, '2024-05-02', 'Repairing air vent', 'Completed'),
(24, 124, '2024-05-03', 'Replacing carpet', 'Completed'),
(25, 125, '2024-05-04', 'Fixing broken window', 'Completed'),
(26, 126, '2024-05-05', 'Unclogging drain', 'Completed'),
(27, 127, '2024-05-06', 'Repairing TV', 'Completed'),
(28, 128, '2024-05-07', 'Replacing light bulbs', 'Completed'),
(29, 129, '2024-05-08', 'Fixing leaking faucet', 'Completed'),
(30, 130, '2024-05-09', 'Painting walls', 'Completed'),
(31, 131, '2024-05-10', 'Repairing air conditioner', 'Completed'),
(32, 132, '2024-05-11', 'Unclogging sink', 'Completed'),
(33, 133, '2024-05-12', 'Fixing broken chair', 'Completed'),
(34, 134, '2024-05-13', 'Replacing door lock', 'Completed'),
(35, 135, '2024-05-14', 'Repairing shower', 'Completed'),
(36, 136, '2024-05-15', 'Fixing toilet flush', 'Completed'),
(37, 137, '2024-05-16', 'Replacing mattress', 'Completed'),
(38, 138, '2024-05-17', 'Unclogging drain', 'Completed'),
(39, 139, '2024-05-18', 'Repairing TV', 'Completed'),
(40, 140, '2024-05-19', 'Replacing light bulbs', 'Completed'),
(41, 141, '2024-05-20', 'Fixing leaking faucet', 'Completed'),
(42, 142, '2024-05-21', 'Painting walls', 'Completed'),
(43, 143, '2024-05-22', 'Repairing air conditioner', 'Completed'),
(44, 144, '2024-05-23', 'Unclogging sink', 'Completed'),
(45, 145, '2024-05-24', 'Fixing broken chair', 'Completed'),
(46, 146, '2024-05-25', 'Replacing door lock', 'Completed'),
(47, 147, '2024-05-26', 'Repairing shower', 'Completed'),
(48, 148, '2024-05-27', 'Fixing toilet flush', 'Completed'),
(49, 149, '2024-05-28', 'Replacing mattress', 'Completed'),
(50, 150, '2024-05-29', 'Unclogging drain', 'Completed');

/*Room Prices Table*/
INSERT INTO RoomPrices (price_id, room_number, start_date, end_date, price) VALUES
(1, 101, '2024-04-01', '2024-04-30', 150.00),
(2, 102, '2024-04-01', '2024-04-30', 200.00),
(3, 103, '2024-04-01', '2024-04-30', 180.00),
(4, 104, '2024-04-01', '2024-04-30', 170.00),
(5, 105, '2024-04-01', '2024-04-30', 190.00),
(6, 106, '2024-04-01', '2024-04-30', 160.00),
(7, 107, '2024-04-01', '2024-04-30', 210.00),
(8, 108, '2024-04-01', '2024-04-30', 220.00),
(9, 109, '2024-04-01', '2024-04-30', 230.00),
(10, 110, '2024-04-01', '2024-04-30', 240.00),
(11, 111, '2024-04-01', '2024-04-30', 250.00),
(12, 112, '2024-04-01', '2024-04-30', 260.00),
(13, 113, '2024-04-01', '2024-04-30', 270.00),
(14, 114, '2024-04-01', '2024-04-30', 280.00),
(15, 115, '2024-04-01', '2024-04-30', 290.00),
(16, 116, '2024-04-01', '2024-04-30', 300.00),
(17, 117, '2024-04-01', '2024-04-30', 310.00),
(18, 118, '2024-04-01', '2024-04-30', 320.00),
(19, 119, '2024-04-01', '2024-04-30', 330.00),
(20, 120, '2024-04-01', '2024-04-30', 340.00),
(21, 121, '2024-04-01', '2024-04-30', 350.00),
(22, 122, '2024-04-01', '2024-04-30', 360.00),
(23, 123, '2024-04-01', '2024-04-30', 370.00),
(24, 124, '2024-04-01', '2024-04-30', 380.00),
(25, 125, '2024-04-01', '2024-04-30', 390.00),
(26, 126, '2024-04-01', '2024-04-30', 400.00),
(27, 127, '2024-04-01', '2024-04-30', 410.00),
(28, 128, '2024-04-01', '2024-04-30', 420.00),
(29, 129, '2024-04-01', '2024-04-30', 430.00),
(30, 130, '2024-04-01', '2024-04-30', 440.00),
(31, 131, '2024-04-01', '2024-04-30', 450.00),
(32, 132, '2024-04-01', '2024-04-30', 460.00),
(33, 133, '2024-04-01', '2024-04-30', 470.00),
(34, 134, '2024-04-01', '2024-04-30', 480.00),
(35, 135, '2024-04-01', '2024-04-30', 490.00),
(36, 136, '2024-04-01', '2024-04-30', 500.00),
(37, 137, '2024-04-01', '2024-04-30', 510.00),
(38, 138, '2024-04-01', '2024-04-30', 520.00),
(39, 139, '2024-04-01', '2024-04-30', 530.00),
(40, 140, '2024-04-01', '2024-04-30', 540.00),
(41, 141, '2024-04-01', '2024-04-30', 550.00),
(42, 142, '2024-04-01', '2024-04-30', 560.00),
(43, 143, '2024-04-01', '2024-04-30', 570.00),
(44, 144, '2024-04-01', '2024-04-30', 580.00),
(45, 145, '2024-04-01', '2024-04-30', 590.00),
(46, 146, '2024-04-01', '2024-04-30', 600.00),
(47, 147, '2024-04-01', '2024-04-30', 610.00),
(48, 148, '2024-04-01', '2024-04-30', 620.00),
(49, 149, '2024-04-01', '2024-04-30', 630.00),
(50, 150, '2024-04-01', '2024-04-30', 640.00);

/*Room Service Orders Table*/
INSERT INTO RoomServiceOrders (order_id, guest_id, room_number, order_date, service_description, total_price) VALUES
(1, 1, 101, '2024-04-10 08:00:00', 'Breakfast: Eggs, Toast, Coffee', 15.00),
(2, 2, 102, '2024-04-11 08:30:00', 'Breakfast: Pancakes, Orange Juice', 12.00),
(3, 3, 103, '2024-04-12 07:45:00', 'Breakfast: Continental Breakfast', 18.00),
(4, 4, 104, '2024-04-13 09:00:00', 'Breakfast: English Breakfast', 20.00),
(5, 5, 105, '2024-04-14 08:15:00', 'Breakfast: Omelette, Fruit Salad', 16.00),
(6, 6, 106, '2024-04-15 08:45:00', 'Breakfast: Bagel, Yogurt, Tea', 14.00),
(7, 7, 107, '2024-04-16 09:30:00', 'Breakfast: Waffles, Maple Syrup', 10.00),
(8, 8, 108, '2024-04-17 07:30:00', 'Breakfast: Muffin, Cereal, Milk', 13.00),
(9, 9, 109, '2024-04-18 08:00:00', 'Breakfast: Croissant, Jam, Coffee', 11.00),
(10, 10, 110, '2024-04-19 09:15:00', 'Breakfast: French Toast, Bacon', 17.00),
(11, 11, 111, '2024-04-20 08:20:00', 'Breakfast: Bagel, Cream Cheese', 14.00),
(12, 12, 112, '2024-04-21 08:10:00', 'Breakfast: Fruit Smoothie, Granola', 15.00),
(13, 13, 113, '2024-04-22 07:40:00', 'Breakfast: Scrambled Eggs, Sausage', 19.00),
(14, 14, 114, '2024-04-23 08:25:00', 'Breakfast: Yogurt Parfait, Muffin', 12.00),
(15, 15, 115, '2024-04-24 08:50:00', 'Breakfast: Oatmeal, Toast, Tea', 16.00),
(16, 16, 116, '2024-04-25 09:10:00', 'Breakfast: Breakfast Burrito, Juice', 18.00),
(17, 17, 117, '2024-04-26 07:55:00', 'Breakfast: Danish Pastry, Coffee', 11.00),
(18, 18, 118, '2024-04-27 08:35:00', 'Breakfast: Bagel, Lox, Cream Cheese', 20.00),
(19, 19, 119, '2024-04-28 08:05:00', 'Breakfast: Avocado Toast, Smoothie', 15.00),
(20, 20, 120, '2024-04-29 09:20:00', 'Breakfast: Eggs Benedict, Mimosa', 22.00),
(21, 21, 121, '2024-04-30 08:40:00', 'Breakfast: Belgian Waffles, Fruit', 16.00),
(22, 22, 122, '2024-05-01 07:50:00', 'Breakfast: Breakfast Wrap, Coffee', 13.00),
(23, 23, 123, '2024-05-02 08:15:00', 'Breakfast: Breakfast Bowl, Tea', 14.00),
(24, 24, 124, '2024-05-03 08:30:00', 'Breakfast: English Muffin, Jam', 10.00),
(25, 25, 125, '2024-05-04 08:00:00', 'Breakfast: Cinnamon Roll, Orange Juice', 12.00),
(26, 26, 126, '2024-05-05 09:10:00', 'Breakfast: Granola Bar, Yogurt', 11.00),
(27, 27, 127, '2024-05-06 08:20:00', 'Breakfast: Breakfast Sandwich, Milk', 13.00),
(28, 28, 128, '2024-05-07 07:45:00', 'Breakfast: Croissant, Coffee', 10.00),
(29, 29, 129, '2024-05-08 08:35:00', 'Breakfast: Bagel, Cream Cheese, Tea', 12.00),
(30, 30, 130, '2024-05-09 08:15:00', 'Breakfast: Fruit Salad, Granola, Juice', 15.00),
(31, 31, 131, '2024-05-10 09:05:00', 'Breakfast: Cereal, Milk, Toast', 11.00),
(32, 32, 132, '2024-05-11 08:25:00', 'Breakfast: Pancakes, Bacon, Syrup', 16.00),
(33, 33, 133, '2024-05-12 07:55:00', 'Breakfast: Omelette, Hash Browns', 18.00),
(34, 34, 134, '2024-05-13 08:40:00', 'Breakfast: Breakfast Burrito, Salsa', 14.00),
(35, 35, 135, '2024-05-14 08:10:00', 'Breakfast: Yogurt Parfait, Fruit', 12.00),
(36, 36, 136, '2024-05-15 09:20:00', 'Breakfast: Bagel, Lox, Cream Cheese', 20.00),
(37, 37, 137, '2024-05-16 08:00:00', 'Breakfast: Avocado Toast, Poached Egg', 16.00),
(38, 38, 138, '2024-05-17 08:30:00', 'Breakfast: Fruit Smoothie, Granola Bar', 13.00),
(39, 39, 139, '2024-05-18 09:00:00', 'Breakfast: Breakfast Wrap, Coffee', 10.00),
(40, 40, 140, '2024-05-19 08:15:00', 'Breakfast: Breakfast Bowl, Tea', 14.00),
(41, 41, 141, '2024-05-20 08:45:00', 'Breakfast: English Muffin, Jam, Juice', 12.00),
(42, 42, 142, '2024-05-21 07:50:00', 'Breakfast: Cinnamon Roll, Coffee', 11.00),
(43, 43, 143, '2024-05-22 08:35:00', 'Breakfast: Croissant, Orange Juice', 15.00),
(44, 44, 144, '2024-05-23 09:10:00', 'Breakfast: Pancakes, Bacon, Maple Syrup', 18.00),
(45, 45, 145, '2024-05-24 08:20:00', 'Breakfast: Omelette, Toast, Tea', 14.00),
(46, 46, 146, '2024-05-25 07:45:00', 'Breakfast: Bagel, Cream Cheese, Coffee', 12.00),
(47, 47, 147, '2024-05-26 08:30:00', 'Breakfast: Fruit Salad, Yogurt, Granola', 16.00),
(48, 48, 148, '2024-05-27 08:00:00', 'Breakfast: Breakfast Sandwich, Milk', 13.00),
(49, 49, 149, '2024-05-28 09:20:00', 'Breakfast: Belgian Waffles, Fruit, Syrup', 20.00),
(50, 50, 150, '2024-05-29 08:10:00', 'Breakfast: Breakfast Burrito, Salsa, Juice', 18.00);

/* Retrieve guest information along with their room booking details*/
SELECT 
    G.*,
    RB.room_number,
    RB.booking_date,
    RB.booking_status
FROM 
    Guests G
INNER JOIN 
    RoomBookings RB ON G.guest_id = RB.guest_id;
    
/* Retrieve room details along with their corresponding room type:*/
SELECT 
    R.*,
    RT.room_type_name,
    RT.capacity
FROM 
    Rooms R
INNER JOIN 
    RoomTypes RT ON R.room_type_id = RT.room_type_id;


/*Retrieve room booking details along with guest information and room type:*/
    
SELECT 
    RB.booking_id,
    G.first_name,
    G.last_name,
    R.room_number,
    RB.booking_date,
    RB.booking_status,
    RT.room_type_name,
    RT.capacity
FROM 
    RoomBookings RB
INNER JOIN 
    Guests G ON RB.guest_id = G.guest_id
INNER JOIN 
    Rooms R ON RB.room_number = R.room_number
INNER JOIN 
    RoomTypes RT ON R.room_type_id = RT.room_type_id;
    
/*Retrieve room maintenance details along with room information:*/
SELECT 
    RM.maintenance_id,
    R.room_number,
    RM.maintenance_date,
    RM.description,
    RM.status
FROM 
    RoomMaintenance RM
INNER JOIN 
    Rooms R ON RM.room_number = R.room_number;
    
/*Retrieve room service orders along with guest information:*/
SELECT 
    RSO.order_id,
    G.first_name,
    G.last_name,
    RSO.room_number,
    RSO.order_date,
    RSO.service_description,
    RSO.total_price
FROM 
    RoomServiceOrders RSO
INNER JOIN 
    Guests G ON RSO.guest_id = G.guest_id;



