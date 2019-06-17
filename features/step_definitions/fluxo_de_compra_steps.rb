Dado('que eu faça um cadstro de um novo usuário') do
  home =  Home.new
  home.load
  home.sign_in.click
  authentication = Authentication.new
  authentication.go_to_form_create_account(Faker::Internet.email)
  create_account_page = CreateAccountPage.new
  create_account_page.create_account
end

Quando('eu selecionar um produto no e-commerce') do
  binding.pry
end

Quando('adicionar ao carrinho') do

end

Quando('preencher as iformações necessárias') do

end

Então('devo visualizar {string}') do |string|

end
