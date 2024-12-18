create database TrainBookingDB;
USE TrainBookingDB;

CREATE TABLE TrainBooking (
    PnrNo INT PRIMARY KEY identity(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    SeatNo NVARCHAR(10),
    TrainName NVARCHAR(100),
    TravelDate DATE,
    TravelTime TIME,
    Mobile NVARCHAR(15)
);

-- Insert Data into TrainBooking Table
INSERT INTO TrainBooking (Firstname, Lastname, Seatno, Trainname, TravelDate, TravelTime, Mobile) 
VALUES 
('Mahesh', 'Reddy', 1, 'Bangalore Express', '2024-12-23', '10:00:00', '9980327764'),
('Priya', 'Sharma', 2, 'Mysore Passenger', '2024-12-23', '11:30:00', '8765432109');

SELECT *FROM TrainBooking
sp_help TrainBooking
