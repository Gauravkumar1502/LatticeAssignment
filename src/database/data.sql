INSERT INTO hospitals (name, address, phone, email) VALUES
('Apollo Hospitals', 'Plot No. 251, Sainik School Road, Unit 15, Gajapati Nagar, Bhubaneswar, Odisha 751005', '0674 666 1010', 'apollo@gmail.com'),
('Jawaharlal Nehru Medical College and Hospital', 'Kalyanpur, Gorakhpur, Uttar Pradesh 273009', '0551 225 7540', 'jawaharlalNehru@gmail.com'),
('Indira Gandhi Institute of Medical Sciences (IGIMS)', 'Sheikhpura, Patna, Bihar 800014', '0612 229 7631', 'IndiraGandi@gmail.com'),
('AIIMS - All India Institute Of Medical Science', 'Saket Nagar, Bhopal, Madhya Pradesh 462020', '0755 267 2310', 'aiims@gmail.com');


INSERT INTO psychiatrists (name, phone, email, address, hospital_id) VALUES
('Dr. Alok Kumar', '9876543210', 'alok@gmail.com', 'Bhubaneswar, Odisha', 1),
('Dr. Anil Kumar', '9876543210', 'anil@gmail.com', 'Bhubaneswar, Odisha', 1),
('Dr. Sunil Kumar', '9876543210', 'sunil@gmail.com', 'Bhubaneswar, Odisha', 1),
('Dr. Ramesh Kumar', '9876543210', 'ramesh@gmail.com', 'Bhubaneswar, Odisha', 1),
('Dr. Suresh Kumar', '9876543210', 'suresh@gmail.com', 'Bhubaneswar, Odisha', 1),
('Dr. Ram Kumar', '9876543210', 'ram@gmail.com', 'Gorakhpur, Uttar Pradesh', 2),
('Dr. Shyam Kumar', '9876543210', 'shyam@gmail.com', 'Gorakhpur, Uttar Pradesh', 2),
('Dr. Mohan Kumar', '9876543210', 'mohan@gmail.com', 'Gorakhpur, Uttar Pradesh', 2),
('Dr. Sohan Kumar', '9876543210', 'sohan@gmail.com', 'Gorakhpur, Uttar Pradesh', 2),
('Dr. Raman Kumar', '9876543210', 'raman@gmail.com', 'Gorakhpur, Uttar Pradesh', 2),
('Dr. Raj', '9876543210', 'raj@gmail.com', 'Patna, Bihar', 3),
('Dr. Ravi', '9876543210', 'ravi@gmail.com', 'Patna, Bihar', 3),
('Dr. Rakesh', '9876543210', 'rakesh@gmail.com', 'Patna, Bihar', 3),
('Dr. Roshan', '9876543210', 'roshan@gmail.com', 'Patna, Bihar', 3),
('Dr. Ritesh', '9876543210', 'ritesh@gmail.com', 'Patna, Bihar', 3),
('Dr. Rishabh', '9876543210', 'rishabh@gmail.com', 'Bhopal, Madhya Pradesh', 4),
('Dr. Rishikesh', '9876543210', 'rishikesh@gmail.com', 'Bhopal, Madhya Pradesh', 4),
('Dr. Rishav', '9876543210', 'rishav@gmail.com', 'Bhopal, Madhya Pradesh', 4),
('Dr. Rishit', '9876543210', 'rishit@gmail.com', 'Bhopal, Madhya Pradesh', 4),
('Dr. Gaurav', '9876543210', 'gaurav@gmail.com', 'Bhopal, Madhya Pradesh', 4);


INSERT INTO patients (name, address, email, phone_number, password, photo, psychiatrist_id) VALUES
('Patient 1', 'Bhubaneswar, Odisha', '', '9876543210', 'password', 'photo.jpg', 1),
('Patient 2', 'Bhubaneswar, Odisha', '', '9876543210', 'password', 'photo.jpg', 2),
('Patient 3', 'Bhubaneswar, Odisha', '', '9876543210', 'password', 'photo.jpg', 2),
('Patient 4', 'Bhubaneswar, Odisha', '', '9876543210', 'password', 'photo.jpg', 3),
('Patient 5', 'Bhubaneswar, Odisha', '', '9876543210', 'password', 'photo.jpg', 3),
('Patient 6', 'Gorakhpur, Uttar Pradesh', '', '9876543210', 'password', 'photo.jpg', 3),
('Patient 7', 'Gorakhpur, Uttar Pradesh', '', '9876543210', 'password', 'photo.jpg', 4),
('Patient 8', 'Gorakhpur, Uttar Pradesh', '', '9876543210', 'password', 'photo.jpg', 4),
('Patient 9', 'Gorakhpur, Uttar Pradesh', '', '9876543210', 'password', 'photo.jpg', 4),
('Patient 10', 'Gorakhpur, Uttar Pradesh', '', '9876543210', 'password', 'photo.jpg', 4),
('Patient 11', 'Patna, Bihar', '', '9876543210', 'password', 'photo.jpg', 5),
('Patient 12', 'Patna, Bihar', '', '9876543210', 'password', 'photo.jpg', 5),
('Patient 13', 'Patna, Bihar', '', '9876543210', 'password', 'photo.jpg', 5),
('Patient 14', 'Patna, Bihar', '', '9876543210', 'password', 'photo.jpg', 5),
('Patient 15', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 5),
('Patient 16', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 17', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 18', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 19', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 20', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 21', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 6),
('Patient 22', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 7),
('Patient 23', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 7),
('Patient 24', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 7),
('Patient 25', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 7),
('Patient 26', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 7),
('Patient 27', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 8),
('Patient 28', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 8),
('Patient 29', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 8),
('Patient 30', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 8),
('Patient 31', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 9),
('Patient 32', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 9),
('Patient 33', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 9),
('Patient 34', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 10),
('Patient 35', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 10),
('Patient 36', 'Bhopal, Madhya Pradesh', '', '9876543210', 'password', 'photo.jpg', 11);

UPDATE patients
SET email = CONCAT('patient_', id, '@gmail.com')
WHERE email = '';