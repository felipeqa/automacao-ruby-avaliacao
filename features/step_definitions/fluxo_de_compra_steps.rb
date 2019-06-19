Dado('que eu faça um cadstro de um novo usuário') do
  @home = Home.new
  authentication = Authentication.new
  create_account_page = CreateAccountPage.new

  @home.load
  @home.sign_in.click
  authentication.go_to_form_create_account(Faker::Internet.email)
  create_account_page.create_account
end

Quando('eu selecionar um produto no e-commerce') do
  t_shirt_page = TShirtPage.new

  @home.t_shirts.click
  t_shirt_page.item_hover.click

  if BROWSER.eql?('chrome') || BROWSER.eql?('chrome_remote')
    t_shirt_page.wait_until_item_visible
    t_shirt_page.item.click
  end

end

Quando('adicionar ao carrinho') do
  add_to_cart_component = AddToCartComponent.new
  add_to_cart_component.wait_until_add_to_cart_visible
  add_to_cart_component.add_to_cart.click
  add_to_cart_component.wait_until_proceed_to_checkout_visible
  add_to_cart_component.proceed_to_checkout.click
end

Quando('preencher as informações necessárias') do
  summary_page = SummaryPage.new
  address_page = AddressPage.new
  shipping_page = ShippingPage.new
  payment_page = PaymentPage.new

  summary_page.proceed_to_checkout.click
  address_page.proceed_to_checkout.click
  shipping_page.agree_terms.click
  shipping_page.proceed_to_checkout.click
  payment_page.pay_by_bank.click
  payment_page.confirm_order.click
end

Então('devo visualizar {string}') do |text|
  assert_text(text)
end
