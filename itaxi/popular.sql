-- Inserindo valores as tabelas:
insert into cliente values ('0', 'Joane');
insert into cliente values ('1', 'João');
insert into cliente values ('2', 'Bene');
insert into cliente values ('3', 'Carlos');
insert into cliente values ('4', 'Alice');

insert into cliente_particular values ('0', '874.542.195-29');
insert into cliente_particular values ('1', '086.563.284-09');
insert into cliente_particular values ('2', '960.545.786-67');
insert into cliente_particular values ('3', '694.064.324-20');
insert into cliente_particular values ('4', '649.521.976-01');

insert into cliente_empresa values ('0', '04.219.781/0001-60');
insert into cliente_empresa values ('1', '76.806.410/0001-96');
insert into cliente_empresa values ('2', '91.937.323/0001-61');
insert into cliente_empresa values ('3', '36.260.819/0001-35');
insert into cliente_empresa values ('4', '14.172.288/0001-96');

insert into taxi values ('KIW-252', 'Toyota', 'a', '2005');
insert into taxi values ('BCI-223', 'Ford','b', '2006' );
insert into taxi values ('KFZ-361', 'BMW', 'c', '2007');
insert into taxi values ('MPM-481', 'Nissan','d', '2008');
insert into taxi values ('HOM-014', 'Volkswagen','e', '2009');

insert into corrida values ('0', 'KIW-252','2024-03-11');
insert into corrida values ('1', 'BCI-223', '2024-03-11');
insert into corrida values ('2', 'KFZ-361', '2024-03-11');
insert into corrida values ('3', 'MPM-481', '2024-03-11');
insert into corrida values ('4', 'HOM-014', '2024-03-11');

-- Apagando tabela por completo e verificando:
drop table fakeValor;
show tables;
-- Alterando objetos já existentes;
alter table cliente modify id varchar(5);

-- Atualizando valores das tabelas e verificando:
update taxi set marca = 'Honda' where placa = 'KIW-252';
SELECT * FROM taxi;

-- Deletando valores das tabelas:
delete from corrida where cliid = '0';
select * from corrida;








