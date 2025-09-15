USE clinica;

/\*

INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dr.Carlos Souza', 'cardiologista', '5555-6666', 'CRM12345');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dra.Ana Lima', 'pediatra', '7878-0000', 'CRM67890');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dr.Marcos Alves', 'Dermatologista', '8889-7070', 'CRM11223');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dra. Luisa Costa', 'ginecologista', '9998-9090', 'CRM44556');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dr.Jairo Miranda','cirurgia geral', '7777-3333', 'CRM22327');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dra.Rita Cassia', 'oftalmologia', '2232-3844', 'CRM33480');

/\*



/\*

INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dr.Diogo Henrique', 'Neurologia', '4444-7777', 'CRM77229');



INSERT INTO medico (nome, especialidade, telefone, crm) VALUES

('Dra.Alice Dias','Cirurgia Plástica', '2222-6666', 'CRM87021');



INSERT INTO medico(nome, especialidade, telefone, crm) VALUES

('Dr.Douglas Teles', 'Traumatologia', '7654-8901', 'CRM21457');



INSERT into medico (nome, especialidade, telefone, crm) VALUES

('Dra.Isis Cruz','Anestesiologia', '1573-7632', 'CRM98321');

\*/\*/

-- vamos fazer a consulta com comando SELECT

SELECT \* from medico;

-- SELECT \* from medico WHERE especialidade = 'pediatra';





INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Rafael lima', '19885-02-12', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com');



INSERT INTO paciente (nome, data\_nascimento, telefone, endereco, cep, email) VALUES

('Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com');



-- SELECT \* from paciente WHERE 

SELECT \* FROM paciente;





INSERT INTO consulta (id\_paciente, id\_medico, data\_hora, observacoes) VALUES

(1,3,'2025-09-19 14:00:00', 'consulta de rotina');



INSERT INTO consulta (id\_paciente, id\_medico, data\_hora, observacoes) VALUES

(6,5,'2022-10-30 15:15:00', 'consulta de rotina');



INSERT INTO consulta (id\_paciente, id\_medico, data\_hora, observacoes) VALUES

(2,1,'1980-04-13', 'consulta de rotina');







SELECT \* from consulta

