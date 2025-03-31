-- Quest�o 01: Como voc� selecionaria todos os dados da tabela patient?
select * from patient;

-- Quest�o 02: Como voc� selecionaria todos os pacientes que t�m o nome "Jo�o"?
select * from patient where name='Jo�o';

-- Quest�o 03: Como voc� selecionaria todas as consultas m�dicas agendadas para uma data espec�fica, por exemplo, 2019-02-07?
select * from medical_consultation where cast(data_consultation as date)='2019-02-07';

-- Quest�o 04: Como voc� encontraria todos os pacientes cujo nome come�a com a letra "A"?
select * from patient where name like 'A%';

-- Quest�o 05: Quantos pacientes est�o cadastrados no sistema?
select count(*) from patient;

-- Quest�o 06: Como voc� contaria quantas consultas cada paciente tem?
select patientID, count(*) as 'qty_patient'
from medical_consultation
group by patientID;

-- Quest�o 07: Como voc� somaria o n�mero total de consultas realizadas por cada m�dico?
select doctorID, count(*) as 'qty_consultas'
from medical_consultation
group by doctorID;

-- Quest�o 08: Qual � a data da consulta mais antiga registrada no sistema?
select min(data_consultation) as 'min_date'
from medical_consultation;

-- Quest�o 09: Qual � a data da consulta mais recente registrada no sistema?
select max(data_consultation) as 'max_date'
from medical_consultation;

-- Quest�o 10: Quantos m�dicos est�o cadastrados para cada especialidade?
select specialityID, count(*) as 'qty_speciality'
from doctor
group by specialityID;

-- Quest�o 11: Como voc� selecionaria todos os m�dicos cadastrados no sistema?
select * from doctor;

-- Quest�o 12: Como voc� selecionaria todos os usu�rios do tipo "2" na tabela users?
select * from users
where user_type=2;

-- Quest�o 13: Como voc� selecionaria todos os pacientes nascidos antes de 1990-01-01?
select * from patient 
where birth_date < '1990-01-01';

-- Quest�o 14: Quantos pacientes est�o associados a um m�dico em uma determinada cl�nica?
select doctorID, patientID, count(*) as 'qty_patient'
from medical_consultation
group by doctorID, patientID;

-- Quest�o 15: Quantas consultas foram realizadas pelo m�dico com id = 1?
select doctorID, count(*) as 'qty_consultation_doctor'
from medical_consultation
where doctorID = 1
group by doctorID;

-- Quest�o 16: Quais s�o as contagens de consultas para cada status diferente?
select status, count(*) as 'qty_status'
from medical_consultation
group by status;

-- Quest�o 17: Como voc� selecionaria os dados do paciente com o CPF �94839859000�?
select * from patient 
where cpf='94839859000';

-- Quest�o 18: Qual foi a data da �ltima consulta registrada no sistema?
select top 1 * 
from medical_consultation
order by data_consultation desc;

-- Quest�o 19: Como voc� encontraria todos os pacientes que n�o t�m consultas registradas?
select * 
from patient 
where ID not in(select distinct patientID from medical_consultation);

-- Quest�o 20: Quantos m�dicos est�o associados a uma cl�nica com id = 1?
select  count(*) as 'qty_doctor_by_clinic' 
from doctor 
where clinicID = 1;

-- Quest�o 21: Como voc� obteria todos os nomes dos usu�rios cadastrados no sistema?
select name from patient;

-- and 
select name from doctor;

-- Quest�o 22: No banco de Dados a uma tabela que guarda os dados das consultas , fa�a um somatorio, dos valores das consultas, 
-- agrupando pelo medico que atendeu, depois mostre somente as que os valores somam mais que R$400.00.
select doctorID, sum(price) as 'sum_price' 
from medical_consultation
group by doctorID
having sum(price)  > 400.00

