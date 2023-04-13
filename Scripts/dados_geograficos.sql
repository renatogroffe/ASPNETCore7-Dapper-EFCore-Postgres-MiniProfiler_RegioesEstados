-- Criar banco dados_geograficos para o Postgres
CREATE DATABASE dados_geograficos;

-- Conectar ao banco dados_geograficos
\c dados_geograficos

-- Criar tabela regioes
CREATE TABLE "Regioes" (
  "IdRegiao" serial NOT NULL,
  "CodRegiao" char(2) NOT NULL,
  "NomeRegiao" varchar(20) NOT NULL,
  CONSTRAINT pk_regioes PRIMARY KEY ("IdRegiao")
);

-- Preencher tabela regioes
INSERT INTO "Regioes" ("CodRegiao", "NomeRegiao")
VALUES ('CO', 'Centro-Oeste');

INSERT INTO "Regioes" ("CodRegiao", "NomeRegiao")
VALUES ('NE', 'Nordeste');

INSERT INTO "Regioes" ("CodRegiao", "NomeRegiao")
VALUES ('N', 'Norte');

INSERT INTO "Regioes" ("CodRegiao", "NomeRegiao")
VALUES ('SE', 'Sudeste');

INSERT INTO "Regioes" ("CodRegiao", "NomeRegiao")
VALUES ('S', 'Sul');

-- Criar tabela Estados
CREATE TABLE "Estados" (
  "SiglaEstado" char(2) NOT NULL,
  "NomeEstado" varchar(20) NOT NULL,
  "NomeCapital" varchar(20) NOT NULL,
  "IdRegiao" int NOT NULL,
  CONSTRAINT pk_estados PRIMARY KEY ("SiglaEstado"),
  CONSTRAINT fk_estados_regioes FOREIGN KEY ("IdRegiao") REFERENCES "Regioes" ("IdRegiao")
);

-- Preencher tabela Estados
INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('AC', 'Acre', 'Rio Branco', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('AL', 'Alagoas', 'Maceió', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('AP', 'Amapá', 'Macapá', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('AM', 'Amazonas', 'Manaus', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('BA', 'Bahia', 'Salvador', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('CE', 'Ceará', 'Fortaleza', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('DF', 'Distrito Federal', 'Brasília', 1);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('ES', 'Espírito Santo', 'Vitória', 4);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('GO', 'Goiás', 'Goiânia', 1);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('MA', 'Maranhão', 'São Luís', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('MT', 'Mato Grosso', 'Cuiabá', 1);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('MS', 'Mato Grosso do Sul', 'Campo Grande', 1);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('MG', 'Minas Gerais', 'Belo Horizonte', 4);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('PA', 'Pará', 'Belém', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('PB', 'Paraíba', 'João Pessoa', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('PR', 'Paraná', 'Curitiba', 5);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('PE', 'Pernambuco', 'Recife', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('PI', 'Piauí', 'Teresina', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('RJ', 'Rio de Janeiro', 'Rio de Janeiro', 4);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('RN', 'Rio Grande do Norte', 'Natal', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('RS', 'Rio Grande do Sul', 'Porto Alegre', 5);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('RO', 'Rondônia', 'Porto Velho', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('RR', 'Roraima', 'Boa Vista', 3);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('SC', 'Santa Catarina', 'Florianópolis', 5);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('SP', 'São Paulo', 'São Paulo', 4);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('SE', 'Sergipe', 'Aracaju', 2);

INSERT INTO "Estados" ("SiglaEstado", "NomeEstado", "NomeCapital", "IdRegiao")
VALUES ('TO', 'Tocantins', 'Palmas', 3);