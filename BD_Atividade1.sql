-- Atividade1
-- Arielly Gonçalves, 557453

-- Importar o banco de dados repassado ao longo das aulas em MySQL;

create database bd_atividade1;
use bd_atividade1;

-- Qual o nome dos departamentos da empresa:

select Dname from department;

-- Quantos empregados tem o departamento de pesquisa ("research")?

select Fname, Dno from employee where Dno = (SELECT Dnumber FROM department WHERE Dname = 'research');

-- Incluir um novo departamento denominado "datascience" com Dno =7:

insert into department (Dname, Dnumber, Mgr_ssn) values ('DataScience', 7, '987654321');

select * from department;

-- Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos:

insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) 
values('Giovana', 'M', 'Teixeira', '998352545', '1969-12-19', '452 Stone, Houston TX', 'F', '45000', '888665555', 7);

insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) 
values('Bryan', 'G', 'Oliveira', '998564354', '1979-02-20', '654 Stone, Houston TX', 'M', '37000', '888665555', 7);

select * from employee;

-- Aumentar o salário de todos os empregados em 23.5% do valor atual:

update employee set Salary = Salary * 1.235;

-- Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE:

update employee set Address = 'Itapajé, CE' where Dno= 4;

select * from employee;


