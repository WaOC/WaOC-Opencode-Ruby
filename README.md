# WaOC [![Gem Version](https://badge.fury.io/rb/waoc.svg)](http://badge.fury.io/rb/waoc) [![Code Climate](https://codeclimate.com/github/WaOC/WaOC-Ruby/badges/gpa.svg)](https://codeclimate.com/github/WaOC/WaOC-Ruby)
Workflow automation Opencode

--------

## Baixando

O download do WaOC pode ser feito executando o comando abaixo:
``` shell
gem install waoc
```

## Funções disponíveis

A seguir, a lista das funções disponíveis

#### Instalação do OpenCode
``` shell
waoc install
```

#### Edição de uma loja
``` shell
#waoc edit 123456 a25e8f6a5c5b6e5f6a5c6cc5 a557a6cb54a654e6f5c5b6a6d6e6 1
waoc edit {{STORE_ID}} {{API_KEY}} {{API_PASSWORD}} {{THEME_ID}}
```

#### Modo Work(DEPRECIADO - Somente versões antigas do gulp)
O modo work, aciona automáticamente o `opencode watch` e também o `gulp`.
``` shell
#waoc work 123456
waoc work {{STORE_ID}}
```
Para finalizar o modo work, ou seja, desligar o `opencode watch` e o `gulp`, deve ser executado a função **stop**

#### Função Stop
Finaliza o `opencode watch` e também o `gulp`
``` shell
waoc stop
```

## Dependências

- Ruby
- Gem
- Node.JS
- NPM


## Dica de ferramenta

O WaOC, funciona muito bem na IDE Cloud9(https://c9.io/).
O Cloud9 é uma IDE online onde é possível editar seu código-fonte e também acessar um terminal para a execução de comandos e instalação de programas.

No Cloud9, todas as dependências já estão instaladas como o Ruby, Gem, Node.js e o NPM.
