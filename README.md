# TP 1 - Introdução a Banco de Dados  

## Introdução  

O trabalho tem o objetivo a consolidação dos conhecimentos relativos a banco de dados relacionais, principalmente álgebra relacional e linguagem SQL. O trabalho consiste na elaboração de consultas SQL a partir de expressões em álgebra relacional e linguagem natural das informações que se pretende recuperar.  

## Esquema  

O banco de dados utilizado contempla dados sobre os Jogos Olímpicos entre 1896 e 2016, com um esquema elaborado especialmente para este trabalho, conforme a [Figura 1](https://github.com/IgorHen0/TP-1-Introducao-a-Banco-de-Dados/blob/main/Esquema%20do%20Banco%20de%20Dados.png). Arquivos contendo o banco de dados (database.sql) e uma descrição das tabelas e campos (dicionário.pdf) estão disponíveis neste repositório.  

## Consultas  

### Especificações em Álgebra Relacional  

Neste bloco, foram elaboradas consultas SQL equivalentes a expressões em álgebra relacional. As expressões foram as seguintes:

- A0:  
  πnome_completo σidade≥80 (pessoa ⨝ jogos competidor)  

- A1:  
  πnome_completo σnome_regiao=′Equipe olímpica de refugiados′ (pessoa ⨝ pessoa regiao ⨝ regiao con)  

- A2:  
  πano_jogos, estacao σnome_cidade=′Londres′ (jogos ⨝ jogos cidade ⨝ cidade)  

- A3:  
  πnome_completo, altura σaltura≥215 ∧ ano jogos=2016 (pessoa ⨝ jogos competidor ⨝ jogos)  

- A4:  
  πnome_completo, altura σgenero=′F′ ∧ altura≥200 (pessoa)  

### Especificações em Linguagem Natural  

Neste bloco, foram elaboradas consultas SQL equivalentes a expressões em linguagem natural. As expressões foram as seguintes:  

- B2:  
  Liste (1) o código e (2) o nome dos cinco CONs com o maior número de atletas registrados. Informe também (3) a quantidade total de atletas para cada CON.  

- B3:  
  Liste (1) o nome das cidades que sediaram mais de uma edição de Jogos Olímpicos e (2) seus respectivos países.  

- B5:  
  Liste (1) o nome dos países e (2) o continente com cidades sede de Jogos Olímpicos de Inverno.  

- B6:  
  Liste (1) o ano, (2) a cidade e (3) a quantidade de esportes diferentes que foram disputados em cada edição dos Jogos Olímpicos de Verão. Ordene os resultados da edição mais antiga para a mais recente.  

- B8:  
  Liste (1) o ano dos Jogos Olímpicos de Inverno e (2) a quantidade de CONs participantes. Ordene os resultados da edição mais antiga para a mais recente.  
