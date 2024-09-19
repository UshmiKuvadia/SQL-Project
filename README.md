# SQL Database Creation: Hotel Management (March 2024)

This project focuses on the creation of a SQL database to manage and optimize data for a hotel management system. The database is designed to improve data management, querying efficiency, and maintain data integrity for various aspects of hotel operations, including guests, rooms, reservations, and services.

## Project Overview

The SQL database was developed to store and manage data for a hotel, ensuring efficient data retrieval, storage, and manipulation. It provides a scalable solution for managing large datasets with a focus on:

- **Optimized data management**: Organizing data into multiple well-structured tables to facilitate easy querying and reporting.
- **Ensured data integrity**: Implementation of constraints, indexes, and normalization to avoid redundancy and maintain data accuracy.
- **Streamlined data access**: Queries designed for fast access and robust reporting on hotel operations.

## Key Features

- **Entities Modeled**:
  - **Guests**: Guest ID, name, contact information, and address
  - **Rooms**: Room number, type, rate, capacity, and description
  - **Reservations**: Reservation ID, guest ID, room number, check-in and check-out dates, total price
  - **Room Types**: Type ID, type name, and description
  - **Room Facilities**: Facility ID, facility name, and description
  - **Room Bookings**: Booking ID, guest ID, room number, booking date, and status
  - **Room Maintenance**: Maintenance ID, room number, maintenance date, description, and status
  - **Room Service Orders**: Order ID, guest ID, room number, order date, service description, and total price

- **Database Design**:
  - **Normalization**: Achieved 3rd Normal Form (3NF) to reduce redundancy and improve data integrity.
  - **Indexes**: Implemented indexes on key columns to enhance performance for frequently run queries.
  - **Constraints**: Foreign key, primary key, and unique constraints to ensure data relationships are maintained and valid.

- **Advanced SQL Techniques**:
  - **JOIN operations**: To connect multiple related tables for comprehensive reporting (e.g., guest bookings, room availability, service usage).
  - **Stored procedures**: For automating repetitive tasks such as generating reports or updating guest information.
  - **Triggers**: To enforce data consistency (e.g., updating room availability after a booking).

## How to Use the Database

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/UshmiKuvadia/SQL-Project.git
