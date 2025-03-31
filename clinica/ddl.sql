CREATE TABLE clinic (
	clinicID int IDENTITY (1,1) NOT NULL,
	costume_name varchar(50) NOT NULL,
	address varchar(50) NOT NULL,
	number varchar(10) NOT NULL,
	cep varchar(10) NOT NULL,
	corporate_reason varchar(50) NOT NULL,
	PRIMARY KEY(clinicID)
)

CREATE TABLE speciality(
	specialityID int IDENTITY (1,1) NOT NULL,
	name varchar(50),
	PRIMARY KEY(specialityID)
)

CREATE TABLE users(
	usersID int IDENTITY (1,1) NOT NULL,
	email varchar (100) NOT NULL,
	password varchar(20) NOT NULL,
	user_type varchar(50) NOT NULL,
	PRIMARY KEY (usersID)
)

CREATE TABLE doctor(
	doctorID int IDENTITY (1,1) NOT NULL,
	name varchar(100) NOT NULL,
	crm varchar(15) NOT NULL,
	usersID int NOT NULL,
	clinicID int NOT NULL,
	specialityID int NOT NULL,
	PRIMARY KEY (doctorID),
	FOREIGN KEY (usersID) REFERENCES dbo.users(usersID),
	FOREIGN KEY (clinicID) REFERENCES dbo.clinic(clinicID),
	FOREIGN KEY (specialityID) REFERENCES dbo.speciality(specialityID)

)

CREATE TABLE patient (
	patientID int IDENTITY (1,1) NOT NULL,
	name varchar(50) NOT NULL,
	cpf varchar (15) NOT NULL,
	rg varchar(15) NOT NULL,
	phone varchar(20) NOT NULL,
	birth_date date NOT NULL,
	usersID int NOT NULL,
	PRIMARY KEY (patientID),
	FOREIGN KEY (usersID) REFERENCES dbo.users(usersID)
)

CREATE TABLE medical_consultation(
	medical_consultationID int IDENTITY (1,1) NOT NULL,
	data_consultation datetime NOT NULL,
	text varchar(250) NOT NULL,
	status int NOT NULL,
	price decimal(10,2) NOT NULL,
	doctorID int NOT NULL,
	patientID int NOT NULL,
	PRIMARY KEY (medical_consultationID),
	FOREIGN KEY (doctorID) REFERENCES dbo.doctor(doctorID),
	FOREIGN KEY (patientID) REFERENCES dbo.patient(patientID)
)