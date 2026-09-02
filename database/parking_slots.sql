USE smart_parking_management;

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
