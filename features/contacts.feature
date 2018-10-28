# language: pt
Funcionalidade: Manipular um contato
  Como um usuário qualquer
  Eu quero poder criar, alterar e apagar um contato

Cenário: Criando um usuário
  Dado que estou na página principal
  Quando clico no botão "Novo contato"
  E preencho o campo "contact_name" com "foo"
  E preencho o campo "contact_phone" com "2222-2222"
  E preencho o campo "contact_email" com "foobar@example.com"
  E clico no botão "Salvar"
  Então devo ver na tela "Contato criado com sucesso"

Cenário: Alterando um usuário
  Dado que eu tenho um usuário criado
  E que estou na página principal
  Quando clico no botão "editar"
  E altero o campo "contact_name" com "bar"
  E clico no botão "Salvar"
  Então devo ver na tela "Contato alterado com sucesso"

@javascript
Cenário: Excluindo um usuário
  Dado que eu tenho um usuário criado
  E que estou na página principal
  Quando clico no botão "apagar"
  E confirmo o modal
  Então devo ver na tela "Contato apagado com sucesso"
