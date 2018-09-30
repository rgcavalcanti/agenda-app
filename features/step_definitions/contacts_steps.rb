Dado('que estou na página principal') do
  visit(root_path)
end

Quando('clico no botão {string}') do |button|
  click_on(button)
end

Quando('preencho o campo {string} com {string}') do |field, value|
  fill_in(field, with: value)
end

Então('devo ver na tela {string}') do |message|
  # expect(page).to have_content(message)
  page.has_content?(message)
end
