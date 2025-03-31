INSERT INTO speciality (name) VALUES
					('Acupuntura'),
					('Anestesiologia'),
					('Angiologia'),
					('Cardiologia'),
					('Cirurgia Cardiovascular'),
					('Cirurgia da Mão'),
					('Cirurgia do Aparelho Digestivo'),
					('Cirurgia Geral'),
					('Cirurgia Pediátrica'),
					('Cirurgia Plástica'),
					('Cirurgia Torácica'),
					('Cirurgia Vascular'),
					('Dermatologia'),
					('Radioterapia'),
					('Urologia'),
					('Pediatria'),
					('Psiquiatria')

INSERT INTO clinic (costume_name, corporate_reason, address, number, cep) VALUES
				('Clinica A', 'UNI Medical Group', 'Av.Universitaria', '5520', '75083-515')

INSERT INTO users(email, user_type, password) VALUES
					('ligia@gmail.com', '1', '1234566'),
					('alexandre@gmail.com', '1', '123R72RA'),
					('fernando@gmail.com', '1', 'WDFU82FS'),
					('henrique@gmail.com', '1', 'NUFsfg93'),
					('joao@hotmail.com', '1', 'MFI98ed8F'),
					('bruno@gmail.com', '1', 'mIRU3j9'),
					('mariana@outlook.com', '1', 'mifU3IJF9'),
					('ricardo.lemos@spmedicalgroup.com.br', '2', 'MVIV3f9J'),
					('roberto.possarle@spmedicalgroup.com.br', '2', 'sdfsgd747'),
					('helena.souza@spmedicalgroup.com.br', '2', 'fMFIOu3d')

INSERT INTO patient(name, birth_date, phone, rg, cpf, usersID) VALUES
				('Ligia', '1983-10-13', '1134567654', '435225435', '94839859000', 1),
				('Alexandre', '2001-07-23', '11987656543', '326543457', '73556944057', 2),
				('Fernando', '1978-10-10', '1197204453', '546365253', '16839338002', 3),
				('Henrique', '1985-10-13', '1134566543', '543663625', '14332654765', 4),
				('João', '1975-08-27', '1176566377', '325444441', '91305348010', 5),
				('Bruno', '1972-03-21', '11954368769', '545662667', '79799299004', 6),
				('Mariana', '2018-03-05', '11969584932', '545662668', '13771913039', 7)

INSERT INTO doctor (crm, name, specialityID, clinicID, usersID) VALUES
					('54356SP', 'Ricardo Lemos', 2, 1, 8),
					('53452SP', 'Roberto Possarle', 17, 1, 9),
					('65463SP', 'Helena Strada', 16, 1, 10)

INSERT INTO medical_consultation(patientID, doctorID, data_consultation, status, text, price) VALUES
								(7, 3, '20/01/2019 15:00', 1, '', '400.00'),
								(2, 2, '06/01/2018 10:00', 2, '', '400.00'),
								(3, 2, '07/02/2019 11:00', 3, '', '400.00'),
								(2, 2, '06/02/2018 10:00', 2, '', '400.00'),
								(4, 1, '07/02/2019 11:00', 3, '', '400.00'),
								(7, 3, '08/02/2019 15:00', 1, '', '400.00'),
								(4, 1, '09/02/2019 11:00', 2, '', '400.00')

SELECT * FROM dbo.medical_consultation