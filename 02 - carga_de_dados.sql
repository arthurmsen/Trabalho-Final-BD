INSERT INTO Aplicador (Id_Aplicador, Nome_Aplicador, CPF, Registro_medico, Sexo_biologico, Data_de_nascimento) VALUES ('AP00', 'João Kleber', '23.456.789-09', 'TE-RJ 102938-4', 'M', '1971-01-13');
INSERT INTO Aplicador (Id_Aplicador, Nome_Aplicador, CPF, Registro_medico, Sexo_biologico, Data_de_nascimento) VALUES ('AP01', 'Maria Fernanda', '987.654.321-00', 'TE-SP 284756-1', 'F', '1975-02-27');
INSERT INTO Aplicador (Id_Aplicador, Nome_Aplicador, CPF, Registro_medico, Sexo_biologico, Data_de_nascimento) VALUES ('AP02', 'Carlos Viana', '345.678.901-20', 'TE-MG 374829-7', 'M', '1980-05-12');
INSERT INTO Aplicador (Id_Aplicador, Nome_Aplicador, CPF, Registro_medico, Sexo_biologico, Data_de_nascimento) VALUES ('AP03', 'Débora Marques', '456.789.123-80', 'TE-RS 465901-3', 'F', '1969-08-13');
INSERT INTO Aplicador (Id_Aplicador, Nome_Aplicador, CPF, Registro_medico, Sexo_biologico, Data_de_nascimento) VALUES ('AP04', 'Henrique Oliveira', '234.567.890-04', 'TE-PA 589013-6', 'M', '1985-02-05');

INSERT INTO Paciente (Id_Paciente, Nome_Paciente, CPF, Sexo_biologico, Data_de_nascimento) VALUES ('PA00', 'Rodrigo Ramos', '301.852.970-30', 'M', '1990-03-02');
INSERT INTO Paciente (Id_Paciente, Nome_Paciente, CPF, Sexo_biologico, Data_de_nascimento) VALUES ('PA01', 'Alexa Silva', '429.176.384-00', 'F', '1987-05-06');
INSERT INTO Paciente (Id_Paciente, Nome_Paciente, CPF, Sexo_biologico, Data_de_nascimento) VALUES ('PA02', 'Lívia Menezes', '582.910.637-65', 'F', '1997-09-12');
INSERT INTO Paciente (Id_Paciente, Nome_Paciente, CPF, Sexo_biologico, Data_de_nascimento) VALUES ('PA03', 'Larissa Antunes', '734.205.198-80', 'F', '1993-07-05');
INSERT INTO Paciente (Id_Paciente, Nome_Paciente, CPF, Sexo_biologico, Data_de_nascimento) VALUES ('PA04', 'Lucas Machado', '845.763.029-27', 'M', '1991-10-17');

INSERT INTO Posto_de_saude (Id_Posto_de_saude, Nome_Posto, CNPJ) VALUES ('PS00', 'UBS Parque das Palmeiras', '36.987.654/0001-27');
INSERT INTO Posto_de_saude (Id_Posto_de_saude, Nome_Posto, CNPJ) VALUES ('PS01', 'UBS Jardim Primavera', '44.112.233/0001-59');
INSERT INTO Posto_de_saude (Id_Posto_de_saude, Nome_Posto, CNPJ) VALUES ('PS02', 'Centro de Saúde São Francisco', '77.888.999/0001-02');
INSERT INTO Posto_de_saude (Id_Posto_de_saude, Nome_Posto, CNPJ) VALUES ('PS03', 'Posto de Saúde Morro Azul', '20.304.506/0001-61');
INSERT INTO Posto_de_saude (Id_Posto_de_saude, Nome_Posto, CNPJ) VALUES ('PS04', 'UBS Ilha Verde', '53.621.478/0001-13');

INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA00', 'BiotecNova', '12.345.678/0001-95');
INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA01', 'Farmacell', '98.765.432/0001-10');
INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA02', 'Imunix Pharma', '11.223.344/0001-81');
INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA03', 'Vaccigen', '55.667.788/0001-03');
INSERT INTO Fabricante (Id_Fabricante, Nome_Fabricante, CNPJ) VALUES ('FA04', 'NeoVita Biotech', '22.334.556/0001-60');

INSERT INTO Lote (Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, Quantidade) VALUES ('LT00', 'GPP0', '2024-12-28', '2025-05-28', 'FA00', 3);
INSERT INTO Lote (Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, Quantidade) VALUES ('LT01', 'DEN2', '2025-01-22', '2025-07-22', 'FA01', 10);
INSERT INTO Lote (Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, Quantidade) VALUES ('LT02', 'COV9', '2025-03-17', '2025-09-17', 'FA02', 7);
INSERT INTO Lote (Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, Quantidade) VALUES ('LT03', 'GRP2', '2025-02-05', '2025-07-05', 'FA03', 8);
INSERT INTO Lote (Id_Lote, Codigo, Data_de_fabricacao, Data_de_validade, Fabricante_Id_Fabricante, Quantidade) VALUES ('LT04', 'CVV1', '2025-01-27', '2025-07-27', 'FA04', 15);

INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA04', 'Covid', '2025-06-13 07:30:00', 'LT04', 'FA04', 'PA00', 'AP00', 'PS00');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA03', 'Gripe', '2025-06-18 07:30:00', 'LT03', 'FA03', 'PA00', 'AP00', 'PS00');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA02', 'Covid', '2025-06-20 07:30:00', 'LT02', 'FA02', 'PA00', 'AP00', 'PS00');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA01', 'Dengue', '2025-06-22 07:30:00', 'LT01', 'FA01', 'PA00', 'AP00', 'PS00');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA00', 'Gripe', '2025-06-27 07:30:00', 'LT00', 'FA00', 'PA00', 'AP00', 'PS00');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA05', 'Covid', '2025-06-01 10:30:00', 'LT04', 'FA04', 'PA01', 'AP01', 'PS01');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA06', 'Covid', '2025-06-08 10:30:00', 'LT02', 'FA02', 'PA01', 'AP01', 'PS01');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA07', 'Gripe', '2025-06-27 11:00:00', 'LT00', 'FA00', 'PA02', 'AP02', 'PS02');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA08', 'Dengue', '2025-06-09 09:30:00', 'LT01', 'FA01', 'PA03', 'AP03', 'PS03');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA13', 'Covid', '2025-06-13 08:30:00', 'LT04', 'FA04', 'PA04', 'AP04', 'PS04');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA12', 'Gripe', '2025-06-15 08:30:00', 'LT03', 'FA03', 'PA04', 'AP04', 'PS04');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA11', 'Covid', '2025-06-20 08:30:00', 'LT02', 'FA02', 'PA04', 'AP04', 'PS04');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA10', 'Dengue', '2025-06-22 08:30:00', 'LT01', 'FA01', 'PA04', 'AP04', 'PS04');
INSERT INTO Vacina (Id_Vacina, Tipo, Horario_de_aplicacao, Lote_Id_Lote, Lote_Fabricante_Id_Fabricante, Paciente_Id_Paciente, Aplicador_Id_Aplicador, Posto_de_saude_Id_Posto_de_saude) VALUES ('VA09', 'Gripe', '2025-06-27 08:30:00', 'LT00', 'FA00', 'PA04', 'AP04', 'PS04');



INSERT INTO UF (Id_UF, Nome_UF) VALUES ('UF00', 'RJ');
INSERT INTO UF (Id_UF, Nome_UF) VALUES ('UF01', 'SP'); 
INSERT INTO UF (Id_UF, Nome_UF) VALUES ('UF02', 'MG'); 
INSERT INTO UF (Id_UF, Nome_UF) VALUES ('UF03', 'RS'); 
INSERT INTO UF (Id_UF, Nome_UF) VALUES ('UF04', 'PA');

INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU00', 'Duque de Caxias', 'UF00');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU01', 'Campinas', 'UF01');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU02', 'Uberlândia', 'UF02');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU03', 'Porto Alegre', 'UF03');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU04', 'Belém', 'UF04');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU05', 'Rio de Janeiro', 'UF00');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU06', 'São Paulo', 'UF01');
INSERT INTO Municipio (Id_Municipio, Nome_Municipio, UF_Id_UF) VALUES ('MU07', 'Belo Horizonte', 'UF02');

INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA00', 'Vila Urussaí', 'MU00', 'UF00');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA01', 'Cambuí', 'MU01', 'UF01');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA02', 'Cidade Jardim', 'MU02', 'UF02');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA03', 'Cidade Baixa', 'MU03', 'UF03');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA04', 'São Brás', 'MU04', 'UF04');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA05', 'Parque Lafaiete', 'MU00', 'UF00');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA06', 'Centro', 'MU01', 'UF01');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA07', 'Santa Mônica', 'MU02', 'UF02');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA08', 'Centro Histórico', 'MU03', 'UF03');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA09', 'Marco', 'MU04', 'UF04');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA10', 'Jardim Primavera', 'MU00', 'UF00');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA11', 'Bosque', 'MU01', 'UF01');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA12', 'Jardim Finotti', 'MU02', 'UF02');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA13', 'Menino Deus', 'MU03', 'UF03');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA14', 'Pedreira', 'MU04', 'UF04');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA15', 'Centro', 'MU05', 'UF00');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA16', 'Consolação', 'MU06', 'UF01');
INSERT INTO Bairro (Id_Bairro, Nome_Bairro, Municipio_Id_Municipio, Municipio_UF_Id_UF) VALUES ('BA17', 'Centro', 'MU07', 'UF02');

INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU00', 'Rua Q', 'BA00', 'MU00', 'UF00');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU01', 'Avenida Júlio Mesquita', 'BA01', 'MU01', 'UF01');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU02', 'Rua das Alamandas', 'BA02', 'MU02', 'UF02');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU03', 'Rua da República', 'BA03', 'MU03', 'UF03');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU04', 'Avenida João Paulo II', 'BA04', 'MU04', 'UF04');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU05', 'Rua João Pessoa', 'BA05', 'MU00', 'UF00');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU06', 'Rua General Osório', 'BA06', 'MU01', 'UF01');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU07', 'Rua João Balbino', 'BA07', 'MU02', 'UF02');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU08', 'Rua dos Andradas', 'BA08', 'MU03', 'UF03');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU09', 'Rua Antônio Barreto', 'BA09', 'MU04', 'UF04');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU10', 'Rua Luís de Matos', 'BA10', 'MU00', 'UF00');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU11', 'Rua Luzitana', 'BA11', 'MU01', 'UF01');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU12', 'Rua das Acácias', 'BA12', 'MU02', 'UF02');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU13', 'Rua Múcio Teixeira', 'BA13', 'MU03', 'UF03');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU14', 'Rua São Pedro', 'BA14', 'MU04', 'UF04');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU15', 'Avenida Presidente Vargas', 'BA15', 'MU05', 'UF00');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU16', 'Avenida Paulista', 'BA16', 'MU06', 'UF01');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU17', 'Avenida Afonso Pena', 'BA17', 'MU07', 'UF02');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU18', 'Rua da Quitanda', 'BA15', 'MU05', 'UF00');
INSERT INTO Rua (Id_Rua, Nome_Rua, Bairro_Id_Bairro, Bairro_Municipio_Id_Municipio, Bairro_Municipio_UF_Id_UF) VALUES ('RU19', 'Rua da Bahia', 'BA17', 'MU07', 'UF02');

INSERT INTO Endereco_Aplicador (Id_Endereco_Aplicador, Numero_Aplicador, Complemento_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EA00', '83', 'Sem complemento', 'AP00', 'RU10', 'BA10', 'MU00', 'UF00');
INSERT INTO Endereco_Aplicador (Id_Endereco_Aplicador, Numero_Aplicador, Complemento_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EA01', '602', 'Bloco 1, Apartamento 303', 'AP01', 'RU11', 'BA11', 'MU01', 'UF01');
INSERT INTO Endereco_Aplicador (Id_Endereco_Aplicador, Numero_Aplicador, Complemento_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EA02', '49', 'Sem complemento', 'AP02', 'RU12', 'BA12', 'MU02', 'UF02');
INSERT INTO Endereco_Aplicador (Id_Endereco_Aplicador, Numero_Aplicador, Complemento_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EA03', '75', 'Sem complemento', 'AP03', 'RU13', 'BA13', 'MU03', 'UF03');
INSERT INTO Endereco_Aplicador (Id_Endereco_Aplicador, Numero_Aplicador, Complemento_Aplicador, Aplicador_Id_Aplicador, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EA04', '32', 'Casa 3', 'AP04', 'RU14', 'BA14', 'MU04', 'UF04');

INSERT INTO Endereco_Posto (Id_Endereco_Posto, Numero_Posto, Complemento_Posto, Posto_de_saude_Id_Posto_de_saude, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('ES00', '234', 'Sem complemento', 'PS00', 'RU00', 'BA00', 'MU00', 'UF00');
INSERT INTO Endereco_Posto (Id_Endereco_Posto, Numero_Posto, Complemento_Posto, Posto_de_saude_Id_Posto_de_saude, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('ES01', '111', 'Sem complemento', 'PS01', 'RU01', 'BA01', 'MU01', 'UF01');
INSERT INTO Endereco_Posto (Id_Endereco_Posto, Numero_Posto, Complemento_Posto, Posto_de_saude_Id_Posto_de_saude, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('ES02', '5', 'Sem complemento', 'PS02', 'RU02', 'BA02', 'MU02', 'UF02');
INSERT INTO Endereco_Posto (Id_Endereco_Posto, Numero_Posto, Complemento_Posto, Posto_de_saude_Id_Posto_de_saude, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('ES03', '31', 'Sem complemento', 'PS03', 'RU03', 'BA03', 'MU03', 'UF03');
INSERT INTO Endereco_Posto (Id_Endereco_Posto, Numero_Posto, Complemento_Posto, Posto_de_saude_Id_Posto_de_saude, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('ES04', '47', 'Sem complemento', 'PS04', 'RU04', 'BA04', 'MU04', 'UF04');

INSERT INTO Endereco_Paciente (Id_Endereco_Paciente, Numero_Paciente, Complemento_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EP00', '12', 'Sem complemento', 'PA00', 'RU05', 'BA05', 'MU00', 'UF00');
INSERT INTO Endereco_Paciente (Id_Endereco_Paciente, Numero_Paciente, Complemento_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EP01', '37', 'Casa 10', 'PA01', 'RU06', 'BA06', 'MU01', 'UF01');
INSERT INTO Endereco_Paciente (Id_Endereco_Paciente, Numero_Paciente, Complemento_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EP02', '205', 'Bloco E, Apartamento 501', 'PA02', 'RU07', 'BA07', 'MU02', 'UF02');
INSERT INTO Endereco_Paciente (Id_Endereco_Paciente, Numero_Paciente, Complemento_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EP03', '43', 'Sem complemento', 'PA03', 'RU08', 'BA08', 'MU03', 'UF03');
INSERT INTO Endereco_Paciente (Id_Endereco_Paciente, Numero_Paciente, Complemento_Paciente, Paciente_Id_Paciente, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EP04', '166', 'Casa dos Fundos', 'PA04', 'RU09', 'BA09', 'MU04', 'UF04');

INSERT INTO Endereco_Fabricante (Id_Endereco_Fabricante, Numero_Fabricante, Complemento_Fabricante, Fabricante_Id_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EF00', '1100', '2º Andar', 'FA00', 'RU15', 'BA15', 'MU05', 'UF00');
INSERT INTO Endereco_Fabricante (Id_Endereco_Fabricante, Numero_Fabricante, Complemento_Fabricante, Fabricante_Id_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EF01', '3990', 'Sem complemento', 'FA01', 'RU16', 'BA16', 'MU06', 'UF01');
INSERT INTO Endereco_Fabricante (Id_Endereco_Fabricante, Numero_Fabricante, Complemento_Fabricante, Fabricante_Id_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EF02', '5', 'Sem complemento', 'FA02', 'RU17', 'BA17', 'MU07', 'UF02');
INSERT INTO Endereco_Fabricante (Id_Endereco_Fabricante, Numero_Fabricante, Complemento_Fabricante, Fabricante_Id_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EF03', '31', 'Sem complemento', 'FA03', 'RU18', 'BA15', 'MU05', 'UF00');
INSERT INTO Endereco_Fabricante (Id_Endereco_Fabricante, Numero_Fabricante, Complemento_Fabricante, Fabricante_Id_Fabricante, Rua_Id_Rua, Rua_Bairro_Id_Bairro, Rua_Bairro_Municipio_Id_Municipio, Rua_Bairro_Municipio_UF_Id_UF) VALUES ('EF04', '47', 'Sem complemento', 'FA04', 'RU19', 'BA17', 'MU07', 'UF02');
