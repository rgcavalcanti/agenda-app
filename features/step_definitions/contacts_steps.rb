Dado('que estou na página principal') do
  visit(root_path)
end

Dado('que eu tenho um usuário criado') do
  Contact.create(
    name: 'foo',
    phone: '2222-2222',
    email: 'foo@example.com'
  )
end

Quando('clico no botão {string}') do |button|
  click_on(button)
end

Quando('preencho o campo {string} com {string}') do |field, value|
  fill_in(field, with: value)
end

Quando('altero o campo {string} com {string}') do |field, value|
  fill_in(field, with: value)
end

Quando('confirmo o modal') do
  page.driver.browser.switch_to.alert.accept
end

Então('devo ver na tela {string}') do |message|
  expect(page).to have_content(message)
end
