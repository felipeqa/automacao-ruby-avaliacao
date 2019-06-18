class AddToCartComponent < SitePrism::Page
  element :add_to_cart, 'button[name="Submit"]'
  element :layer_card, '#layer_cart'
  element :proceed_to_checkout, 'a[title="Proceed to checkout"]'
end
