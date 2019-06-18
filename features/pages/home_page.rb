# Home page
class Home < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  element :sign_in, '.login'
  element :t_shirts, 'a[title="T-shirts"]'
end
