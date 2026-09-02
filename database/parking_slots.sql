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
