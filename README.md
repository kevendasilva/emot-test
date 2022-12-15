# Navegação

- [Navegação](#navegação)
- [Sobre](#sobre)
  - [Primeira versão](#primeira-versão)
  - [Banco de dados](#banco-de-dados)
- [Em desenvolvimento...](#em-desenvolvimento)

# Sobre

## Primeira versão

Esta versão terá menos componentes e demandará menos programação. Abaixo apresento um diagrama de como será a estrutura básica desta versão.

<div align="center">
  <img src="public/simple-version.png">
  <p>
    <em>Versão com menos componentes.</em>
  </p>
</div>

Abaixo apresento a descrição de cada um dos componentes desta versão.

- **App**: O componente App será uma aplicação desenvolvida em Ruby On Rails, e será o principal recurso usado para validar a ideia;
- **NodeMCU**: Como podemos ver no diagrama, temos um microcontrolador, que neste caso é um NodeMCU,versão Lolin V3;
- **DB**: O gerenciador de banco de dados utilizado será o PostgreSQL.

O ambiente de desenvolvimento do código usado no microcontrolador será o ArduinoIDE.

## Banco de dados

Na figura abaixo temos uma das primeiras versões da estrutura do banco de dados utilizado nesta versão.

<div align="center">
  <img src="public/simple-version-db.png">
  <p>
    <em>Estrutura do banco de dados da aplicação.</em>
  </p>
</div>

A descrição de cada entidade é dada a seguir.

- Components: Vão identificar os componentes que serão utilizados (ligados no microcontrolador).
    - name: O nome para aquele componente;
    - kind: O tipo do componente, se é ***atuador** ou **sensor;**
    - port: A porta usada para ligar o componente ao microcontrolador;
    - min-value: O valor mínimo que pode ser inserido em uma saída do microcontrolador, para o componente;
    - max-value: O valor máximo que pode ser inserido em uma saída do microcontrolador, para o componente.
- Outputs: A saída que será enviada para um componente. O componente deverá considerar apenas a última saída.
    - value: O valor de saída para aquele componente.
    - kind: O tipo daquela saída. Existem componentes que só possuem a possibilidade de ligar/desligar, não podendo usar a função **analogWrite**, por exemplo.
- Readings: Serão os valores lidos pelos sensores.
    - value: O valor lido pelo sensor.

# Em desenvolvimento...
