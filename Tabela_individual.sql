

CREATE TABLE sensor(
idSensor INT PRIMARY KEY auto_increment,
tipoSensor VARCHAR(40),
constraint chkTipo check(tipoSensor in('Ar','Solo')),
statusSensor VARCHAR(40),
constraint chkTipo check(tipoSensor in('Ativo','Inativo')),
localizacaoSetor VARCHAR(40)

);

CREATE TABLE cliente(
idCliente INT PRIMARY KEY auto_increment,
nome VARCHAR(40),
email VARCHAR(40) UNIQUE,
telefone INT UNIQUE,
localidade VARCHAR(40),
cnpj CHAR(14) UNIQUE,
data_cadastro datetime default current_timestamp
 );
 
CREATE TABLE umidade(
idUmidade INT primary key auto_increment,
cicloAtual VARCHAR(40),
umidadeAtual INT,
mediaDia INT,
mediaCiclo INT,
localizacaoSetor VARCHAR(40)
);


