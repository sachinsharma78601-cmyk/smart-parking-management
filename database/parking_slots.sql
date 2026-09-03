USE smart_parking_management;
CREATE TABLE USERS (
USER_ID INT PRIMARY KEY auto_increment,
name varchar(100) NOT null,
Email varchar(100) unique not null,
Phone varchar (15),
PASSWORDS VARCHAR(225)
);

INSERT INTO USERS (USER_ID, NAME, Email, Phone, password)
values
(1, 'rajat', 'rajatsharma@gmail.com', '9868235342', 'rajat#1234'),
(2, 'kanav jain', 'kanavjain@gmail.com', '2345167589', 'hello@kanav'),
(3, 'nikita', 'nikita23@gmail.com', '9968235342', '123@nikita'),
(4, 'shivam', 'shivamthaur@yahoo.com', '8851895662', 'thakurShivam'),
(5, 'rishab singh', 'rishabh@hotmail.com', '9013465896', 'taragiRishabh'),
(6, 'lavish chauhan', 'thakurlavish@gmail.com', '1234567890', 'Lavish#1234');

select * from USERS;


CREATE TABLE parking_slots (
    slot_id INT PRIMARY KEY AUTO_INCREMENT,
    slot_number VARCHAR(10) NOT NULL,
    status VARCHAR(20) NOT NULL
);

INSERT INTO parking_slots (slot_number, status)
VALUES
('A01','Available'),
('A02','Available'),
('A03','Occupied'),
('A04','Available'),
('A05','Reserved'),
('A06','Occupied');

SELECT * FROM parking_slots;


CREATE TABLE BOOKINGS(
BOOKING_ID INT PRIMARY KEY auto_increment,
user_id int,
slot_id int,
vehichle_number varchar(20),
start_time datetime,
end_time datetime,
status ENUM('BOOKED', 'ACTIVE', 'COMPLETED', 'CANCELLED')DEFAULT 'BOOKED',
foreign key (user_id) REFERENCES USERS(user_id),
foreign key (slot_id) references parking_slots(slot_id)
);

insert into BOOKINGS
(BOOKING_ID, user_id, slot_id, vehichle_number, start_time, end_time, status)
values
(1, 1, 1, 'DL01AB1234', '2026-09-03 09:00:00', '2026-09-03 11:00:00', 'Completed'),
(2, 2, 2, 'DL02CD5678', '2026-09-03 10:00:00', '2026-09-03 13:00:00', 'Completed'),
(3, 3, 3, 'DL03EF9012', '2026-09-03 12:00:00', '2026-09-03 15:00:00', 'Active'),
(4, 4, 4, 'DL04GH3456', '2026-09-03 14:00:00', '2026-09-03 17:00:00', 'Booked'),
(5, 5, 5, 'DL05IJ7890', '2026-09-03 15:00:00', '2026-09-03 18:00:00', 'Booked');

select * from BOOKINGS;

CREATE TABLE parking_records (
record_id int primary key auto_increment,
booking_id int,
entry_time datetime,
exit_time datetime,
duration_minutes int,
amount decimal(10,2),
foreign key (booking_id) references BOOKINGS(booking_id)
);


INSERT INTO parking_records
(booking_id, entry_time, exit_time, duration_minutes, amount)
VALUES
(1, '2026-09-01 09:00:00', '2026-09-01 11:30:00', 150, 75.00),
(2, '2026-09-01 10:15:00', '2026-09-01 13:15:00', 180, 90.00),
(3, '2026-09-01 12:00:00', '2026-09-01 14:00:00', 120, 60.00),
(4, '2026-09-02 09:30:00', '2026-09-02 12:30:00', 180, 90.00),
(5, '2026-09-02 14:00:00', '2026-09-02 17:30:00', 210, 105.00);

select * from parking_records;
