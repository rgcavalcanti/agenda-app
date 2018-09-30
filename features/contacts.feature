# language: pt
Funcionalidade: Manipular um contato
  Como um usuário qualquer
  Eu quero poder criar, alterar e apagar um contato

Cenário: Criando um usuário
  Dado que estou na página principal
  Quando clico no botão "New Contact"
  E preencho o campo "contact_name" com "foo"
  E preencho o campo "contact_phone" com "2222-2222"
  E preencho o campo "contact_email" com "foobar@example.com"
  E clico no botão "Create Contact"
  Então devo ver na tela "Contact was successfully created."
