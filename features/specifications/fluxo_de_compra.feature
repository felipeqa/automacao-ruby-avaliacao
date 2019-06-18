# language: pt

@compra
Funcionalidade: Fluxo de comprar de um e-commerce

Como um usuario novo
Desejo criar um cadastro no e-commerce xpto
Para poder efetuar uma compra

Contexto: Fazer o cadastro de um usuário
  Dado que eu faça um cadstro de um novo usuário

Cenario: Fluxo de compra

  Quando eu selecionar um produto no e-commerce
  E adicionar ao carrinho
  E preencher as informações necessárias
  Então devo visualizar "Your order on My Store is complete."
