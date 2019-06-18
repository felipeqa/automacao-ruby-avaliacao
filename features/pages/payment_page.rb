class PaymentPage < SitePrism::Page
  element :pay_by_bank, 'a[title="Pay by bank wire"]'
  element :confirm_order, '#cart_navigation > button[type="submit"]'
end
