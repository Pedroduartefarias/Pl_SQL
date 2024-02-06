Create table pais (id number primary key,
        nome varchar(30));
        
Create table estado (id_estado number primary key,
        nome varchar(30),
        Id_pais number);
        
Alter table estado add constraint fk_estado
foreign key (id_pais) references pais (id_pais);

Create table cidade (id_cidade number,
        nome varchar2(30),
        id_estado number);

alter table cidade add constraint Fk_cidade
foreign key(id_estado) references estado (id_estado);

create table bairro (id_bairro number,
        nome varchar2(30),
        id_cidade number);

alter table bairro add constraint fk_bairro
foreign key (id_cidade) references cidade(id_cidade);

create table endereco_cliente (id_cliente number,
        nome varchar2(100),
        cep varchar2(12),
        id_bairro number);

alter table endereco_cliente add constraint fk_end_cliente
foreign key (id_bairro) references bairro (id_bairro);

