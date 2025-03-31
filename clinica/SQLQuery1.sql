-- Questão 01: Como você selecionaria todos os dados da tabela patient?
select * from patient;

-- Questão 02: Como você selecionaria todos os pacientes que têm o nome "João"?
select * from patient where name='João';

-- Questão 03: Como você selecionaria todas as consultas médicas agendadas para uma data específica, por exemplo, 2019-02-07?
select * from medical_consultation where cast(data_consultation as date)='2019-02-07';

-- Questão 04: Como você encontraria todos os pacientes cujo nome começa com a letra "A"?
select * from patient where name like 'A%';

-- Questão 05: Quantos pacientes estão cadastrados no sistema?
select count(*) from patient;

-- Questão 06: Como você contaria quantas consultas cada paciente tem?
select patientID, count(*) as 'qty_patient'
from medical_consultation
group by patientID;

-- Questão 07: Como você somaria o número total de consultas realizadas por cada médico?
select doctorID, count(*) as 'qty_consultas'
from medical_consultation
group by doctorID;

-- Questão 08: Qual é a data da consulta mais antiga registrada no sistema?
select min(data_consultation) as 'min_date'
from medical_consultation;

-- Questão 09: Qual é a data da consulta mais recente registrada no sistema?
select max(data_consultation) as 'max_date'
from medical_consultation;

-- Questão 10: Quantos médicos estão cadastrados para cada especialidade?
select specialityID, count(*) as 'qty_speciality'
from doctor
group by specialityID;

-- Questão 11: Como você selecionaria todos os médicos cadastrados no sistema?
select * from doctor;

-- Questão 12: Como você selecionaria todos os usuários do tipo "2" na tabela users?
select * from users
where user_type=2;

-- Questão 13: Como você selecionaria todos os pacientes nascidos antes de 1990-01-01?
select * from patient 
where birth_date < '1990-01-01';

-- Questão 14: Quantos pacientes estão associados a um médico em uma determinada clínica?
select doctorID, patientID, count(*) as 'qty_patient'
from medical_consultation
group by doctorID, patientID;

-- Questão 15: Quantas consultas foram realizadas pelo médico com id = 1?
select doctorID, count(*) as 'qty_consultation_doctor'
from medical_consultation
where doctorID = 1
group by doctorID;

-- Questão 16: Quais são as contagens de consultas para cada status diferente?
select status, count(*) as 'qty_status'
from medical_consultation
group by status;

-- Questão 17: Como você selecionaria os dados do paciente com o CPF ‘94839859000’?
select * from patient 
where cpf='94839859000';

-- Questão 18: Qual foi a data da última consulta registrada no sistema?
select top 1 * 
from medical_consultation
order by data_consultation desc;

-- Questão 19: Como você encontraria todos os pacientes que não têm consultas registradas?
select * 
from patient 
where ID not in(select distinct patientID from medical_consultation);

-- Questão 20: Quantos médicos estão associados a uma clínica com id = 1?
select  count(*) as 'qty_doctor_by_clinic' 
from doctor 
where clinicID = 1;

-- Questão 21: Como você obteria todos os nomes dos usuários cadastrados no sistema?
select name from patient;

-- and 
select name from doctor;

-- Questão 22: No banco de Dados a uma tabela que guarda os dados das consultas , faça um somatorio, dos valores das consultas, 
-- agrupando pelo medico que atendeu, depois mostre somente as que os valores somam mais que R$400.00.
select doctorID, sum(price) as 'sum_price' 
from medical_consultation
group by doctorID
having sum(price)  > 400.00

