class TShirtPage < SitePrism::Page
  element :item_hover, '.product-container'
  element :item, 'h5 > a[title="Faded Short Sleeve T-shirts"]'
  element :iframe, 'iframe'
end
